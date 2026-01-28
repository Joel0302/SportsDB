CREATE OR REPLACE VIEW departmentsalarysummary AS
SELECT 
    department,
    COUNT(employee_id) AS totalemployees,
    SUM(salary) AS totalbudget,
    ROUND(AVG(salary), 2) AS averagesalary
FROM 
    employees
GROUP BY 
    department;


