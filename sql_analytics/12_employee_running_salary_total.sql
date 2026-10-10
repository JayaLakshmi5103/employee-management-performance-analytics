
-- Project: Employee Management & Performance Analytics
-- Topic: Window Aggregate Function - SUM()
-- Purpose: Calculate a running salary total within each department

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    SUM(e.salary) OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_salary_total
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.salary DESC;
