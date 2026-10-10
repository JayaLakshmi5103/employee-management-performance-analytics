
-- Project: Employee Management & Performance Analytics
-- Topic: Window Function - DENSE_RANK()
-- Purpose: Rank employees by salary within each department

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    DENSE_RANK() OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
    ) AS dense_rank
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, dense_rank;
