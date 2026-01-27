-- BASELINE FROM ADHOC_SCRIPT.SQL --
ALTER TABLE dbo.Employees 
ALTER COLUMN LastName VARCHAR(200);


ALTER TABLE dbo.Employees 
ADD PhoneNumber VARCHAR(20);

CREATE TABLE dbo.Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DeptName VARCHAR(100) NOT NULL,
    Location VARCHAR(50),
    State Varchar (1000),
    country varchar(255)
);


CREATE TABLE STG_HIST_SCHEMA.Stg_Hist_Employees (
    EmployeeID VARCHAR(50),                 
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255),
    Salary VARCHAR(50),                    
    LastModifiedDate VARCHAR(50)
  );

-- MERGED CONTENT START --

-- Source: BI_SCHEMA/script2.sql --
CREATE OR REPLACE VIEW department_salary_summary AS
SELECT 
    department,
    COUNT(employee_id) AS totalemployees,
    SUM(salary) AS totalbudget,
    ROUND(AVG(salary), 2) AS averagesalary
FROM 
    employees
GROUP BY 
    department;



-- Source: STG_SCHEMA/Stg_table1.sql --
create or replace stg_schema.stg_table1(
  id varchar(255),
  masterid varchar(255),
  name varchar(255),
  age varchar(1000),
  gender varchar(255)
  );


-- GRANTS START --
GRANT USAGE ON SCHEMA DBO_SCHEMA TO developer_role;

GRANT CREATE ON SCHEMA DBO_SCHEMA TO senior_developer;
