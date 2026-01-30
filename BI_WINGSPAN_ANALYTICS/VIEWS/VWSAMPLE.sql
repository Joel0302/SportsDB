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
