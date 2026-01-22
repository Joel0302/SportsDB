-- START OF MASTER SCRIPT (No Adhoc Found) --
--------------------------------------------------
-- Source: BI_SCHEMA/script2.sql
--------------------------------------------------
CREATE OR REPLACE VIEW department_salary_summary AS
SELECT department, COUNT(employee_id) AS total_employees,
    SUM(salary) AS total_budget,
    ROUND(AVG(salary), 3) AS average_salary
FROM 
    employees
GROUP BY 
    department;




