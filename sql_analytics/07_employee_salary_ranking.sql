-- Project: Employee Management & Performance Analytics
-- Topic: Window Function - RANK()
-- Purpose: Rank employees by salary within each department

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    RANK() OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
    ) AS salary_rank
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, salary_rank;
