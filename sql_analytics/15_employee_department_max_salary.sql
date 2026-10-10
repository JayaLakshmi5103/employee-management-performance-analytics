-- Topic: MAX() OVER()
-- Purpose: Show each employee's salary and department maximum salary

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    MAX(e.salary) OVER (
        PARTITION BY e.department_id
    ) AS department_max_salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.salary DESC;
