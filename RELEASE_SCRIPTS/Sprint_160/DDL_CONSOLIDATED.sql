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

-- Source: BI_SCHEMA/sample_view1.sql --
create or replace sampleView1   
select * from customers where id is not null;


-- Source: STG_SCHEMA/Stg_table1.sql --
create or replace stg_schema.stg_table1(
  id varchar(255) ,
  name varchar(255),
  age varchar(255),
  gender varchar(255)
  );


-- GRANTS START --
GRANT EXECUTE ON dbo.CalculateBonuses TO HRUser;
GRANT ALTER ON dbo.Departments TO LeadDeveloper;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE orders TO app_user_role;
