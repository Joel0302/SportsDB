-- START OF MASTER SCRIPT --

-- MERGED CONTENT START --

-- Source: BI_SCHEMA/script2.sql --
CREATE OR REPLACE VIEW department_salary_summary AS
SELECT 
    department,
    COUNT(employee_id) AS total_employees,
    SUM(salary) AS totalbudget,
    ROUND(AVG(salary), 2) AS average_salary
FROM 
    employees
GROUP BY 
    department;


-- Source: STG_SCHEMA/Stg_table1.sql --
create or replace stg_schema.stg_table1(
  id varchar(255),
  masterid varchar(255),
  name varchar(255),
  age varchar(255),
  gender varchar(255)
  );


