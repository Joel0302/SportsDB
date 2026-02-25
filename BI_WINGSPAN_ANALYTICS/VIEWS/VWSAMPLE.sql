CREATE VIEW BI_SCHEMA.ActiveUser AS
SELECT 
    UserIdentities, 
    UserAddress,
    UserName , 
    Email, 
    LoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
