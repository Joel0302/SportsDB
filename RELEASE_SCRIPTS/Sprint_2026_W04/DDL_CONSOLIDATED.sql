-- START OF MASTER SCRIPT --

-- MERGED CONTENT START --

-- Source: DBO_WINGSPAN_ANALYTICS/VIEWS/VWDBOSAMPLE.sql --
create or replace view dbo.Vwsampleview()
  uid varchar (1000);


-- Source: STG_WINGSPAN_ANALYTICS/TABLES/SPORTS.sql --
create or replace stg_schema.stg_table1(
  id varchar(1000),
  masterid varchar(2000),
  name varchar(1000) ,
  age varchar(255),
  Gender varchar(255)
  );


