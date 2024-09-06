--the CTE will wil initially count the users that belong to the userids in year 2022
WITH CTE1 as (SELECT user_id, count(user_id) as users_num
FROM tweets
WHERE DATE_PART('year', tweet_date) = '2022'
GROUP BY 1)

--creating the histogram according to bucket
SELECT COUNT(user_id) as tweet_bucket, users_num FROM CTE1
GROUP BY 2
ORDER BY 1
;