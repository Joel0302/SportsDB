-- SECTION: ADHOC --
-- Source: RELEASE_SCRIPTS/Sprint_2026_W04/Adhoc_Scripts.sql --

ALTER TABLE dbo.Employees 
ALTER COLUMN FirstName VARCHAR(5000);


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
    LastModifiedDate VARCHAR(150)
  );


-- SECTION: FOLDER CHANGES --
create or replace stg_schema.stg_table2(
  id varchar(1000),
  masterNAME varchar(1000),
  name varchar(1000) ,
  age varchar(1000),
  Gender varchar(1000),
  maid varchar(255)
  );


