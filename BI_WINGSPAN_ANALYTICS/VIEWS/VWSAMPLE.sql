CREATE VIEW BI_SCHEMA.ActiveUser AS
SELECT 
    UserIdentities , 
    UserAddresses,
    UserName , 
    Email, 
    LoginDate,
    Logout
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
