
-- Project: Employee Management & Performance Analytics
-- Topic: SELF JOIN with LEFT JOIN
-- Purpose: Display employees and their manager names

SELECT
    e.employee_id,
    e.employee_name,
    e.job_role,
    m.employee_name AS manager_name
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.employee_id
ORDER BY e.employee_id;
