CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentities , 
    UserAddress,
    UserName , 
    Email, 
    Loginid,
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
