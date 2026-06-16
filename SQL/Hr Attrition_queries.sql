SELECT *FROM Employees

-- 1. Highest Salary Employees
SELECT employee_id,
       job_role,
       department,
       salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- 2. Lowest Salary Employees
SELECT employee_id,
       job_role,
       department,
       salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

-- 3. Average Salary Employees
SELECT ROUND(AVG(salary), 2) AS average_salary
FROM employees;

-- 4. total Employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 5. Total Attrition
SELECT COUNT(*) AS total_attrition
FROM employees
WHERE attrition = 'Yes';

-- 6. Active Employees
SELECT COUNT(*) AS active_employees
FROM employees
WHERE attrition = 'No';

-- 7. Attrition Rate
SELECT ROUND(
       COUNT(*) FILTER (WHERE attrition='Yes') * 100.0 /
       COUNT(*),2
       ) AS attrition_rate
FROM employees;

-- 8. Average Age
SELECT ROUND(AVG(age),2) AS avg_age
FROM employees;

-- 9. Attrition by Travel
SELECT business_travel,
       COUNT(*) AS attrition_count
FROM employees
WHERE attrition='Yes'
GROUP BY business_travel
ORDER BY attrition_count DESC;

-- 10. Attrition by Overtime
SELECT overtime,
       COUNT(*) AS attrition_count
FROM employees
WHERE attrition='Yes'
GROUP BY overtime;

-- 11. Attrition by Department
SELECT department,
       COUNT(*) AS attrition_count
FROM employees
WHERE attrition='Yes'
GROUP BY department
ORDER BY attrition_count DESC;

-- 12. Attrition by Job Role
SELECT job_role,
       COUNT(*) AS attrition_count
FROM employees
WHERE attrition='Yes'
GROUP BY job_role
ORDER BY attrition_count DESC;

-- 13. Attrition by Distance from Home
SELECT distance_from_home,
       COUNT(*) AS attrition_count
FROM employees
WHERE attrition='Yes'
GROUP BY distance_from_home
ORDER BY distance_from_home;

-- 14. Attrition by Current Role Year
SELECT no_of_years_in_current_role,
       COUNT(*) AS attrition_count
FROM employees
WHERE attrition='Yes'
GROUP BY no_of_years_in_current_role
ORDER BY no_of_years_in_current_role;

-- 15. Attrition by Salary Hike %
SELECT salary_hike_in_percent,
       COUNT(*) AS attrition_count
FROM employees
WHERE attrition='Yes'
GROUP BY salary_hike_in_percent
ORDER BY salary_hike_in_percent;

-- 16. Job Satisfaction Distribution
SELECT job_satisfaction,
       COUNT(*) AS employees
FROM employees
GROUP BY job_satisfaction
ORDER BY job_satisfaction;

