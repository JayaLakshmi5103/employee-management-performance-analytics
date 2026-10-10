
-- Project: Employee Management & Performance Analytics
-- Topic: Window Function - LAG()
-- Purpose: Compare an employee's salary with the previous salary in the same department

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    LAG(e.salary) OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
    ) AS previous_salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.salary DESC;
