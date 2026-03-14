CREATE VIEW BI_SCHEMA.ActiveUser AS
SELECT 
    UserIdentities , 
    UserAddress,
    UserNames , 
    Email, 
    LoginDate,
    LogoutDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
