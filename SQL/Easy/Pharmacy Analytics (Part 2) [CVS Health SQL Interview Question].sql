SELECT manufacturer, count(drug) as drug_count,
SUM(cogs - total_sales) as total_loss
FROM pharmacy_sales
where cogs > total_sales
group by 1
ORDER BY 3 desc 
;