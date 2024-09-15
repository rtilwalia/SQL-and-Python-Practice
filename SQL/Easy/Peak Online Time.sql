WITH CTE AS (select SUM(user_count) as user_count
, CONCAT(start_timestamp, ' to ', end_timestamp) as time_period,
device_type
from user_activity
group by device_type, start_timestamp, end_timestamp
),

CTE2 as (SELECT user_count, time_period, device_type,
dense_rank() over(partition by device_type order by user_count desc) as device_num
from CTE)

SELECT user_count, time_period, device_type from CTE2
where device_num = 1
order by user_count desc

;