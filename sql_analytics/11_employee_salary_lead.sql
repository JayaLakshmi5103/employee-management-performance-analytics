
-- Project: Employee Management & Performance Analytics
-- Topic: Window Function - LEAD()
-- Purpose: Compare an employee's salary with the next salary in the same department

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    LEAD(e.salary) OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
    ) AS next_salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.salary DESC;
