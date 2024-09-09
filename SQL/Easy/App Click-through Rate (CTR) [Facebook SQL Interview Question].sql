SELECT app_id, 
ROUND(100.0 * 
count(*) FILTER (WHERE event_type = 'click') /
count(*) FILTER (WHERE event_type = 'impression'), 2) as ctr
FROM events
WHERE DATE_PART('year', timestamp) = '2022'
GROUP BY 1