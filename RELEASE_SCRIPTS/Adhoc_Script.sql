
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

