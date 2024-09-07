SELECT user_id, EXTRACT(DAY FROM MAX(post_date)-MIN(post_date)) as days_between FROM posts
WHERE DATE_PART('year', post_date) = '2021'
GROUP BY 1
HAVING COUNT(user_id) >= 2;

-- other ways of doing it! 
-- in MS SQl Server - DATEDIFF(Day, MIN(post_date), MAX(post_date))
-- EXTRACT(DAY FROM MAX(post_date)-MIN(post_date))
-- (CAST(MAX(post_date) AS date) - CAST(MIN(post_date) AS date))