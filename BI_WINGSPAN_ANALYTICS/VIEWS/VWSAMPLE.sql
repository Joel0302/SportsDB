CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentities , 
    UserAddresses,
    UserNames , 
    Email, 
    LoginDate,
    Logout
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
