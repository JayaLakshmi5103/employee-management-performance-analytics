
-- Project: Employee Management & Performance Analytics
-- File: 03_verify_data.sql
-- Purpose: Verify inserted records

-- Check department records
SELECT *
FROM departments
ORDER BY department_id;

-- Check employee records
SELECT *
FROM employees
ORDER BY employee_id;

-- Verify total departments
SELECT COUNT(*) AS total_departments
FROM departments;

-- Verify total employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Check employees with no assigned manager
SELECT employee_id, employee_name, job_role
FROM employees
WHERE manager_id IS NULL
ORDER BY employee_id;
