CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentity , 
    USerAddress,
    UserName , 
    Email, 
    LastLoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
