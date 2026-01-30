
CREATE VIEW BI_SCHEMA.v_Active_Users AS
SELECT 
    UserIdentity , 
    USerAddress,
    UserName , 
    Email, 
    LastLoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;
