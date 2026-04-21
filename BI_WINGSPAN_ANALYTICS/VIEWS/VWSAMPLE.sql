CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserIdentities , 
    UserAddress,
    UserName , 
    Email, 
    LoginDateid,
    LogoutDate
FROM 
    DBO_SCHEMA.Usersid
WHERE 
    IsActive = 1;
