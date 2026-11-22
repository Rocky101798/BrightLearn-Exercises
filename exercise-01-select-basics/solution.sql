--this to select all columns
SELECT * FROM employees;

--This to bring distinct values(no duplicates)
SELECT DISTINCT department FROM employees;

--This is to add abit of order in the information we want to see
SELECT first_name,
       last_name
FROM employees
ORDER BY salary DESC;

--this is to see top paid employees( LIMIT ) 
SELECT first_name,
       last_name,
       department,
       salary 
FROM employees
ORDER BY salary DESC;
LIMIT 5;

--this is using the WHERE statement 
SELECT * FROM employees
WHERE department = 'IT';

--this is using the AND statement 
SELECT * FROM employees
WHERE department = 'Finance'
AND salary > 58000;

--OR statemement 
SELECT * FROM employees 
WHERE department = 'HR'
OR department = 'Marketing';

--NOT statement 
SELECT * FROM employees
WHERE department NOT ('IT');

--IN statement 
SELECT * FROM employees
WHERE department IN ( 'HR', 'IT','Finance' ) ;

--Combination of queries 
SELECT * FROM employees 
WHERE department = 'IT'
AND salary > 50000
AND city = 'New York';

--Combining WHERE, AND, and ORDER BY
SELECT first_name,
      last_name
FROM employees 
WHERE department IN ( 'Finance', 'Marketing')
AND salary > 52000
ORDER BY salary DESC; 

--12. Combining SELECT DISTINCT, WHERE, and IN

SELECT DISTINCT city 
FROM employees 
WHERE department NOT ( 'IT', 'HR' );

--Combining WHERE, NOT, AND, and ORDER BY 
SELECT * FROM employees 
WHERE department NOT ('Finance')
AND salary > 50000
ORDER BY hire_date ASC;

--Combining WHERE, OR, IN, and LIMIT
SELECT first_name,
       last_name
FROM employees 
WHERE city IN ('Chicago', 'Los Angeles')
AND department IN ('IT','Marketing')
LIMIT 3;
