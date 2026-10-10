
-- Project: Employee Management & Performance Analytics
-- Topic: Window Function - ROW_NUMBER()
-- Purpose: Assign a unique row number within each department

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary,
    ROW_NUMBER() OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
    ) AS row_num
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, row_num;
