-- START OF MASTER SCRIPT --
-- Source: BI_SCHEMA/script2.sql
CREATE OR REPLACE VIEW department_salary_summary AS
SELECT 
    department,
    COUNT(employee_id) AS total_employees,
    SUM(salary) AS total_budget,
    ROUND(AVG(salary), 2) AS average_salary
FROM 
    employees
GROUP BY 
    department;
GO

-- Source: DBO_SCHEMA/script1.sql
CREATE TABLE IF NOT EXISTS employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE DEFAULT CURRENT_DATE
);


INSERT INTO employees (first_name, last_name, department, salary)
VALUES ('John', 'Doe', 'Engineering', 85000.00);
GO

-- Source: RELEASE_SCRIPTS/Adhoc_Script.sql

ALTER TABLE dbo.Employees 
ADD PhoneNumber VARCHAR(20);

ALTER TABLE dbo.Departments 
DROP COLUMN Location;

CREATE TABLE dbo.MArketing (
    MArketingId INT PRIMARY KEY IDENTITY(1,1),
    DeptName VARCHAR(100) NOT NULL,
    Location VARCHAR(50)
);


GRANT SELECT ON dbo.Employees TO SalesUser;

GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Employees TO AdminUser;


GO

