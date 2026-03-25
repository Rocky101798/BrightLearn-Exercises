-- COUNT() Function
SELECT COUNT(id) AS no_of_employees
FROM employees;

--SUM() Function
SELECT SUM(salary) AS Total_salary
FROM employees
WHERE department = 'IT';

--AVG() Function
SELECT AVG(salary) AS Average_salary
FROM employees
WHERE department = 'HR';

--MIN() and MAX() Functions
SELECT MIN(salary) AS lowest_salary,
      MAX(salary) AS highest_salary
FROM employees;

--GROUP BY Statement
SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department;

--GROUP BY and COUNT()
SELECT city,
       COUNT(ID) AS no_of_employees
FROM employees 
GROUP BY city;

--GROUP BY and ORDER BY
SELECT department,
       AVG(salary) AS average_salary 
FROM employees
GROUP BY department
ORDER BY average_salary DESC;

--HAVING Clause
SELECT department,
       SUM(salary) AS total_salary
FROM employees 
GROUP BY department 
HAVING total_salary > 100000;

--Combining GROUP BY, HAVING, and ORDER BY
SELECT city,
      COUNT(ID) AS no_of_employees
FROM employees
GROUP BY city 
HAVING no_of_employees > 1
ORDER BY no_of_employees DESC;

--Combining Aggregate Functions
SELECT department,
      AVG(salary) AS average_salary 
FROM employees 
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;
      

