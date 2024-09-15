select week, sum(quantity) from orders_analysis 
where date_part('year', week) = '2023' and 
date_part('month', week) in ('1', '2', '3')
group by 1
;