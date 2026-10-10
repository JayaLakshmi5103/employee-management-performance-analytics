
-- Project: Employee Management & Performance Analytics
-- Topic: Window Aggregate Function - AVG()
-- Purpose: Display each employee's salary alongside the department average

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    ROUND(
        AVG(e.salary) OVER (
            PARTITION BY e.department_id
        ), 2
    ) AS department_avg_salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.salary DESC;
