
-- 1. Select all columns from the employees table.

SELECT * FROM employees;

-- 2. Select only the first_name, last_name and salary of all employees.

SELECT first_name, last_name, salary
FROM employees;

-- 3. Retrieve a list of unique job positions.

SELECT DISTINCT job_title
FROM employees
ORDER BY job_title;


-- 4. Rename fname as "First Name", lname as "Last Name" and position as "Role" in the result.

SELECT 
  first_name AS "First Name", 
  last_name AS "Last Name", 
  job_title AS "Role"
FROM employees;


-- 5. Concatenate fname and position as "Employee Details".

SELECT 
  CONCAT(first_name, ' - ', job_title) AS "Employee Details"
FROM employees;


