WITH CTE AS (SELECT 
account_id,
CASE WHEN transaction_type = 'Deposit' THEN amount
WHEN transaction_type = 'Withdrawal' THEN -amount
END as balance
from transactions)

SELECT account_id, SUM(balance) as final_balance
FROM CTE 
GROUP BY 1
;