-- SECTION: ADHOC --
-- Source: RELEASE_SCRIPTS/Sprint_2026_W04/Adhoc_Scripts_Part04.sql --
ALTER TABLE dbo.Employees 
ALTER COLUMN Lastname VARCHAR(5000);


ALTER TABLE dbo.Employees 
ADD PhoneNumber VARCHAR(20);

CREATE TABLE dbo.Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DeptName VARCHAR(100) NOT NULL,
    Location VARCHAR(50),
    State Varchar (1000),
    country varchar(255)
);
