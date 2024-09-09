SELECT 
ROUND(CAST(SUM(item_count * order_occurrences) /
SUM(order_occurrences) as numeric), 1) as mean
FROM items_per_order;