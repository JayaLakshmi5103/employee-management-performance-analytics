
-- Project: Employee Management & Performance Analytics
-- Topic: HAVING
-- Purpose: Find departments with average salary above 55000

SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    ROUND(AVG(e.salary), 2) AS average_salary
FROM departments d
INNER JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING AVG(e.salary) > 55000
ORDER BY average_salary DESC;
