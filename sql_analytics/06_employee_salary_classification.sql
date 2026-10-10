
-- Project: Employee Management & Performance Analytics
-- Topic: CASE Expression
-- Purpose: Classify employees based on salary

SELECT
    employee_id,
    employee_name,
    job_role,
    salary,
    CASE
        WHEN salary >= 70000 THEN 'High Salary'
        WHEN salary >= 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees
ORDER BY salary DESC;
