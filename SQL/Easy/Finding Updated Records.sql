with cte as (select *,
row_number() over(partition by id order by salary desc) as latest_info_rank
from ms_employee_salary)

select id, first_name, last_name, salary, department_id
from cte
where latest_info_rank = 1
;