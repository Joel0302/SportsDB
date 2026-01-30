CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserID, 
    USerAddress,
    UserName , 
    Email, 
    LastLoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
