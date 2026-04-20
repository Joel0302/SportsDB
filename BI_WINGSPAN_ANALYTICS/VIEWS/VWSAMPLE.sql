CREATE VIEW BI_SCHEMA.ActiveUser AS
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
