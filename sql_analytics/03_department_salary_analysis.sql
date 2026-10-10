
-- Project: Employee Management & Performance Analytics
-- Topic: GROUP BY and Aggregate Functions
-- Purpose: Analyze salary by department

SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    SUM(e.salary) AS total_salary,
    ROUND(AVG(e.salary), 2) AS average_salary,
    MAX(e.salary) AS highest_salary,
    MIN(e.salary) AS lowest_salary
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY d.department_id;
