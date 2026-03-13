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
-- Source: BI_WINGSPAN_ANALYTICS/VIEWS/VWSAMPLE.sql --
CREATE VIEW BI_SCHEMA.ActiveUser AS
SELECT 
    UserIdentities , 
    UserAddresses,
    UserNames , 
    Email, 
    LoginDate,
    LogoutDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;


-- Source: DBO_WINGSPAN_ANALYTICS/VIEWS/VWDBOSAMPLE.sql --
create or replace view dbo.Vwsampleview
select 'joelmario' from name where id is not null;


-- Source: STG_WINGSPAN_ANALYTICS/TABLES/SPORTS.sql --
create or replace stg_schema.stg_table2(
  id varchar(1000),
  masterNAME varchar(1000),
  names varchar(1000) ,
  ages varchar(1000),
  Gender varchar(1000),
  maidid varchar(1000)
  );



-- SECTION: GRANTS --
GRANT USAGE ON DATABASE WINGSPAN_ANALYTICS TO ROLE ANALYST_ROLE;
GRANT USAGE ON SCHEMA DBO_WINGSPAN_ANALYTICS TO ROLE ANALYST_ROLE;
GRANT SELECT ON ALL TABLES IN SCHEMA DBO_WINGSPAN_ANALYTICS TO ROLE ANALYST_ROLE;
GRANT SELECT ON ALL VIEWS IN SCHEMA DBO_WINGSPAN_ANALYTICS TO ROLE ANALYST_ROLE;
