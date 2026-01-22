-- START OF MASTER SCRIPT (No Adhoc Found) --
--------------------------------------------------
-- Source: BI_SCHEMA/sample_view1.sql
--------------------------------------------------
create or replace sampleView1
select * from customers where date is not null;


--------------------------------------------------
-- Source: STG_SCHEMA/Stg_table1.sql
--------------------------------------------------
create or replace stg_schema.stg_table1(
  id varchar(255)
  );


