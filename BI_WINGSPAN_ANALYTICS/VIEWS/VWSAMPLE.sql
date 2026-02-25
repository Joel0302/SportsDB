CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentities , 
    UserAddress,
    UserNames , 
    Email, 
    LoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
