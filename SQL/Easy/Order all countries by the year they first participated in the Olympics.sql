with cte as (select noc, year,
row_number() over(partition by noc order by year) as noc_year_rank
from olympics_athletes_events)

select noc, year from cte
where noc_year_rank = 1
;