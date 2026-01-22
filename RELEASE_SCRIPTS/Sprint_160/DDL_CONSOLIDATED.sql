-- BASELINE FROM ADHOC_SCRIPT.SQL --
ALTER TABLE dbo.Employees 
ALTER COLUMN LastName VARCHAR(200);


ALTER TABLE dbo.Employees 
ADD PhoneNumber VARCHAR(20);

CREATE TABLE dbo.Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DeptName VARCHAR(100) NOT NULL,
    Location VARCHAR(50),
    State Varchar (1000)
);


CREATE TABLE STG_HIST_SCHEMA.Stg_Hist_Employees (
    EmployeeID VARCHAR(50),                 
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255),
    Salary VARCHAR(50),                    
    LastModifiedDate VARCHAR(50)
  );


GRANT EXECUTE ON dbo.CalculateBonuses TO HRUser;
GRANT ALTER ON dbo.Departments TO LeadDeveloper;


-- ####### MERGED CONTENT START #######

--------------------------------------------------
-- Source: BI_SCHEMA/sample_view1.sql
--------------------------------------------------
create or replace sampleView1   
select * from customers where date is not null;


