CREATE TABLE IF NOT EXISTS employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(100),
    salary DECIMAL(10, 3),
    hire_date DATE DEFAULT CURRENT_DATE
);


INSERT INTO employees (first_name, last_name, department, salary)

VALUES ('John', 'MArio', 'Engineering', 95000.0);






