select ABS(
    (SELECT max(salary)
    from db_employee e JOIN db_dept d 
    ON e.department_id = d.id
    WHERE d.department = 'marketing') - 
    (SELECT max(salary)
    from db_employee e JOIN db_dept d 
    ON e.department_id = d.id
    WHERE d.department = 'engineering')
) as salary_difference

