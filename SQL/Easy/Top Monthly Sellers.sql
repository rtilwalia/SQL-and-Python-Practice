with top_sellers_rank_product_category as (select *,
dense_rank() over(partition by product_category order by total_sales desc) as top_sellers_rank
from sales_data
where month = '2024-01'
)

SELECT seller_id, total_sales, product_category, market_place, month
from top_sellers_rank_product_category
WHERE 
top_sellers_rank in ('1', '2', '3')
;