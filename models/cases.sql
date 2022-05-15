SELECT distinct(key), total_tested, total_confirmed, total_recovered , total_deceased from `stacklabs-payments.transations.transactions`
WHERE total_recovered > total_deceased 
AND key = 'BR'
AND total_tested is NOT NULL