WITH CTE AS (SELECT COUNT(policy_holder_id) as policy_holder_count, policy_holder_id FROM callers
GROUP BY policy_holder_id
HAVING count(policy_holder_id) >= 3)

SELECT COUNT(policy_holder_count) FROM CTE
;

