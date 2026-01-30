-- START OF MASTER SCRIPT --

-- MERGED CONTENT START --

-- Source: BI_WINGSPAN_ANALYTICS/TABLES/table.sql --
Create or replace bi_schema.sampletable 
id varchar(255) 
  name varchar(255);


-- Source: BI_WINGSPAN_ANALYTICS/VIEWS/VWSAMPLE.sql --

CREATE VIEW BI_SCHEMA.v_Active_Users AS
SELECT 
    UserID, 
    UserName , 
    Email, 
    LastLoginDate
FROM 
    DBO_SCHEMA.Users
WHERE 
    IsActive = 1;


-- Source: CERTIFIED_BUSINESS_WINGSPAN_ANALYTICS/VIEWS/VWADOBE.sql --
Create or replace certifiedview.VWsample
select 'mario' from source; 


-- Source: STG_WINGSPAN_ANALYTICS/TABLES/SPORTS.sql --
create or replace stg_schema.stg_table1(
  id varchar(255),
  masterid varchar(255),
  name varchar(255) ,
  age varchar(1000),
  Gender varchar(255)
  );


