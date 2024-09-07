WITH CTE AS (SELECT 
  CASE WHEN device_type = 'laptop' 
  THEN user_id END AS laptops,
  CASE WHEN device_type = 'tablet' OR device_type = 'phone' 
  THEN user_id END AS mobiles
FROM viewership
GROUP BY device_type, user_id
)

SELECT COUNT(laptops) as laptop_views, COUNT(mobiles) as mobile_views
FROM CTE
WHERE laptops IS NOT NULL
OR mobiles IS NOT NULL
;