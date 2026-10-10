
-- Project: Employee Management & Performance Analytics
-- Topic: INNER JOIN
-- Purpose: Display employees with their department names

SELECT
    e.employee_id,
    e.employee_name,
    e.job_role,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
ORDER BY e.employee_id;
