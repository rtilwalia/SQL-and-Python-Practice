WITH CTE AS 
(SELECT 
e.email_id, e.user_id, 
DATE_PART('day', t.action_date - e.signup_date) as days_diff
FROM emails e
LEFT JOIN texts t 
ON e.email_id = t.email_id
WHERE signup_action = 'Confirmed')

SELECT user_id FROM CTE 
WHERE days_diff = 1
;

