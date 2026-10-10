
-- Project: Employee Management & Performance Analytics
-- Topic: Single-row Subquery
-- Purpose: Find employees earning above the overall average salary

SELECT
    employee_id,
    employee_name,
    job_role,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;
