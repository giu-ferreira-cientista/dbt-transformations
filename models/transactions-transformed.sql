SELECT CAST(T.amt AS NUMERIC) as amt,T.dob,T.job,T.ssn,T.zip,T.city,T.last,T.first,T.state,T.cc_num,T.street,T.profile,T.acct_num,T.category,T.city_pop,T.is_fraud,T.merchant,T.merch_lat,T.trans_num,T.merch_long,T.trans_date,T.trans_time,
CASE
    WHEN gender = "M" THEN 1
    WHEN gender = "F" THEN 0
END as gender
from `stacklabs-payments.transations.transaction` as  T
WHERE is_fraud is NOT NULL
AND amt is NOT NULL
