
-- Project: Employee Management & Performance Analytics
-- Step 1: Create departments table

CREATE TABLE departments (
    department_id   int PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Step 2: Create employees table

CREATE TABLE employees (
    employee_id   int PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    job_role      VARCHAR(50),
    salary        decimal(10,2),
    department_id int,
    manager_id    int,
    hire_date     DATE,
    CONSTRAINT fk_emp_dept
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT fk_emp_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);
