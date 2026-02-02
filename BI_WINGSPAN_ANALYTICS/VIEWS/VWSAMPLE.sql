CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentity , 
    USerAddress,
    UserName , 
    Email, 
    LoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
