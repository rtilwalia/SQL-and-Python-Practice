SELECT 
SUM(CASE WHEN SUBSTRING(product, 1, 8) = 'TurboTax' THEN 1 ELSE 0 END) AS turbotax_total,
SUM(CASE WHEN SUBSTRING(product, 1, 10) = 'QuickBooks' THEN 1 ELSE 0 END) AS quickbooks_total
FROM filed_taxes;