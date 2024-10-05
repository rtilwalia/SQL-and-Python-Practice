SELECT p.product_line, SUM(t.amount)
FROM product_info p  
JOIN transactions t ON  
p.product_id = t.product_id
GROUP BY 1
ORDER BY 2 desc;