CREATE VIEW BI_SCHEMA.ActiveUser AS
SELECT 
    UserIdentities , 
    UserAddresses,
    UserNames , 
    Email, 
    LoginDate,
    Logout
FROM 
    DBO_SCHEMA.Userstable
WHERE 
    IsActive = 1;
