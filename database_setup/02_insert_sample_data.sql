
-- Project: Employee Management & Performance Analytics
-- File: 02_insert_sample_data.sql
-- Step 1: Insert departments

INSERT INTO departments (department_id, department_name)
VALUES (10, 'IT');

INSERT INTO departments (department_id, department_name)
VALUES (20, 'HR');

INSERT INTO departments (department_id, department_name)
VALUES (30, 'Finance');

INSERT INTO departments (department_id, department_name)
VALUES (40, 'Sales');

INSERT INTO departments (department_id, department_name)
VALUES (50, 'Marketing');



-- Step 2: Insert managers

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (101, 'Arun', 'IT Manager', 80000, 10, NULL, DATE '2022-01-15');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (104, 'Priya', 'HR Manager', 70000, 20, NULL, DATE '2021-06-10');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (107, 'Karthik', 'Finance Manager', 75000, 30, NULL, DATE '2020-03-20');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (109, 'Divya', 'Sales Manager', 72000, 40, NULL, DATE '2022-08-01');

-- Step 3: Insert employees

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (102, 'Meena', 'Developer', 55000, 10, 101, DATE '2023-02-01');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (103, 'Ravi', 'Developer', 60000, 10, 101, DATE '2022-11-12');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (105, 'Anitha', 'HR Executive', 40000, 20, 104, DATE '2024-01-05');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (106, 'Suresh', 'Accountant', 45000, 30, 107, DATE '2023-07-18');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (108, 'Vijay', 'Sales Executive', 42000, 40, 109, DATE '2024-04-22');

INSERT INTO employees
(employee_id, employee_name, job_role, salary, department_id, manager_id, hire_date)
VALUES (110, 'Nisha', 'Marketing Executive', 38000, 50, NULL, DATE '2024-09-10');

-- Step 4: Save the inserted records
COMMIT;

