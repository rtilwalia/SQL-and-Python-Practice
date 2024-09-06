WITH CTE AS (SELECT 
  distinct candidate_id, count(skill) as skill_count
  FROM candidates
  WHERE skill in ('Python','Tableau', 'PostgreSQL')
  group by 1
  )

SELECT candidate_id from CTE
WHERE skill_count = 3
ORDER BY 1;
