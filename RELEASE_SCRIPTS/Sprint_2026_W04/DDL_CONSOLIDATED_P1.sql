
-- SECTION: ADHOC SCRIPTS --
ALTER TABLE dbo.Employees 
ALTER COLUMN LastName VARCHAR(2000);


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



-- SECTION: FOLDER/FILE CHANGES --
-- Source: BI_WINGSPAN_ANALYTICS/VIEWS/VWSAMPLE.sql --
CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentities , 
    USerAddress,
    UserName , 
    Email, 
    LoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;


-- Source: CERTIFIED_BUSINESS_WINGSPAN_ANALYTICS/VIEWS/VWADOBE.sql --
Create or replace certifiedview.VWsample
select 'mario' from nametable; 


-- Source: DBO_WINGSPAN_ANALYTICS/VIEWS/VWDBOSAMPLE.sql --
create or replace view dbo.Vwsampleview
select 'mario' from nametable where id is not null;


-- Source: STG_WINGSPAN_ANALYTICS/TABLES/SPORTS.sql --
create or replace stg_schema.stg_table1(
  id varchar(1000),
  masterNAME varchar(255),
  name varchar(1000) ,
  age varchar(1000),
  Gender varchar(255),
  maidid varchar(255)
  );



-- SECTION: GRANTS (UPDATED) --
GRANT USAGE ON SCHEMA DBO_SCHEMA TO developer_role;

GRANT CREATE ON SCHEMA DBO_SCHEMA TO senior_tester;



