CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentities , 
    UserAddresses,
    UserName , 
    Email, 
    LoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
