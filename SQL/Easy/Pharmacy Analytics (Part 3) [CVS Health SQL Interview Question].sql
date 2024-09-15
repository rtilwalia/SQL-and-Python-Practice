SELECT manufacturer, CONCAT('$', ROUND(SUM(total_sales)/1000000), ' million') as sale FROM pharmacy_sales
GROUP BY 1
ORDER BY ROUND(SUM(total_sales)/1000000) desc, 1 desc;