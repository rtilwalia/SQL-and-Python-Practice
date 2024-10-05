SELECT user_id, COUNT(product_id) as product_num
FROM user_transactions
GROUP BY 1
HAVING SUM(spend) >= 1000.00
ORDER BY COUNT(product_id) DESC, SUM(spend) DESC LIMIT 3;