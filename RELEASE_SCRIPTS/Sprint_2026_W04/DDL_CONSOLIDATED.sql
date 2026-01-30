-- START OF MASTER SCRIPT --

-- MERGED CONTENT START --

-- Source: BI_WINGSPAN_ANALYTICS/VIEWS/VWSAMPLE.sql --
CREATE VIEW BI_SCHEMA.ActiveUsers AS
SELECT 
    UserID, 
    USerAddress,
    UserName , 
    Emailaddress, 
    LastLoginDate,
    LastLogin
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;


