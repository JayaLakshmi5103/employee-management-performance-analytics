
-- Project: Employee Management & Performance Analytics
-- Topic: Window Aggregate Function - COUNT()
-- Purpose: Display each employee with the total employees in their department

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    COUNT(*) OVER (
        PARTITION BY e.department_id
    ) AS department_employee_count
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.employee_id;
