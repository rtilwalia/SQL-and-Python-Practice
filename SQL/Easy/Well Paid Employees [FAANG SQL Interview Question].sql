SELECT E.employee_id, E.name as employee_name FROM employee E 
JOIN employee M ON
E.manager_id = M.employee_id
WHERE E.salary > M.salary;