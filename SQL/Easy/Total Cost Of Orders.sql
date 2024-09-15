select c.id as customer_id, c.first_name, sum(total_order_cost) as total_order_cost
from customers c
join orders o
on c.id = o.cust_id
group by c.id, c.first_name
;