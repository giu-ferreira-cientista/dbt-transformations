SELECT  T.state, T.city, T.category, ROUND(AVG(CAST(T.amt as NUMERIC)), 2) as media, ROUND(SUM(CAST(T.amt as NUMERIC)), 2) as soma, COUNT(*) as total
from `stacklabs-payments.transations.transactions-transformed` as  T
where T.is_fraud is not NULL
and amt is not NULL 
GROUP BY T.state, T.city, T.category
ORDER BY state, city, category, total DESC