with cte as (select customer_id, purchase_amount, 
row_number() over(partition by customer_id order by purchase_amount desc) as cust_rank
from transactions)

select customer_id, purchase_amount
from cte
where cust_rank = 1
order by purchase_amount desc;