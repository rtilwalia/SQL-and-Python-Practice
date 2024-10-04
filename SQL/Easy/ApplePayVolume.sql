WITH CTE AS (select merchant_id,
CASE 
  WHEN lower(payment_method) = 'apple pay' THEN transaction_amount
  ELSE 0
END AS applepay_transaction
FROM transactions)

SELECT merchant_id, SUM(applepay_transaction) as total_transaction
from CTE 
GROUP BY 1
ORDER BY 2 desc
;