SELECT profile_id FROM
personal_profiles p INNER JOIN company_pages c ON
p.employer_id = c.company_id
WHERE p.followers > c.followers 
ORDER BY profile_id;