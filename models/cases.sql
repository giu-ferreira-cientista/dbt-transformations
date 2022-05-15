SELECT T.key, T.total_tested, T.total_confirmed, T.total_recovered , T.total_deceased from `stacklabs-payments.transations.transactions` as  T
WHERE T.total_recovered > T.total_deceased 
AND T.key = 'CN_HA'