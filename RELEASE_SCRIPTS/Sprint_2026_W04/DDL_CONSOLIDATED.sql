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

-- Source: BI_WINGSPAN_ANALYTICS/TABLES/table.sql --
Create or replace bi_schema.sampletable 
id varchar(255) ,
  name varchar(255);


-- Source: BI_WINGSPAN_ANALYTICS/VIEWS/VWSAMPLE.sql --
CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserID, 
    USerAddress,
    UserName , 
    Emailaddress, 
    LastLoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;


-- Source: CERTIFIED_BUSINESS_WINGSPAN_ANALYTICS/VIEWS/VWADOBE.sql --
Create or replace certifiedview.VWsample()
  select id,name from table1; 


-- Source: STG_WINGSPAN_ANALYTICS/TABLES/SPORTS.sql --
create or replace stg_schema.stg_table1(
  id varchar(1000),
  masterid varchar(1000),
  name varchar(1000) ,
  age varchar(1000),
  Gender varchar(255)
  );


-- GRANTS START --
GRANT USAGE ON SCHEMA DBO_SCHEMA TO developer_role;

GRANT CREATE ON SCHEMA DBO_SCHEMA TO senior_developer;
