--1. SQL Joins
----1 = INNER JOIN.
SELECT A.EmployeeID,
      A.FirstName, 
      A.LastName, 
      A.Department,  
      A.Salary,
      B.ProjectID,
      B.ProjectName, 
      B.Budget, 
      B.Status
FROM Employees AS A
INNER JOIN Projects AS B
ON A.EmployeeID = B.EmployeeID;

---2 = LEFT JOIN
SELECT A.EmployeeID,
      A.FirstName,
      A.LastName, 
      A.Department,
      A.Salary, 
      B.ProjectID, 
      B.ProjectName, 
      B.Budget, 
      B.Status
FROM Employees AS A
LEFT JOIN Projects AS B
ON A.EmployeeID = B.EmployeeID; 

---3 = RIGHT JOIN
SELECT B.ProjectID,
      B.ProjectName, 
      B.Budget, 
      B.Status, 
      A.EmployeeID, 
      A.FirstName, 
      A.LastName, 
      A.Department, 
      A.Salary
FROM Employees AS A
RIGHT JOIN Projects AS B 
ON A.EmployeeID = B.EmployeeID;

---4 = FULL OUTER JOIN
SELECT A.EmployeeID, 
      A.FirstName, 
      A.LastName, 
      A.Department, 
      A.Salary, 
      B.ProjectID, 
      B.ProjectName, 
      B.Budget, 
      B.Status
FROM Employees AS A
FULL OUTER JOIN Projects AS B
ON A.EmployeeID = B.EmployeeID;

--3. Filtering Statements
---7
SELECT EmployeeID, 
    FirstName, 
    LastName, 
    Department, 
    Salary
FROM Employees
WHERE salary > 70000;

---8
SELECT EmployeeID, 
    FirstName, 
    LastName, 
    Department, 
    Salary
FROM Employees 
WHERE Department = 'IT'
OR Department = 'Finance';

---9
SELECT ProjectID, 
      ProjectName, 
      Budget, 
      Status
FROM Projects 
WHERE status IN ('Ongoing', 'Pending');

---10 
SELECT ProjectID, 
      ProjectName, 
      Budget, 
      Status
FROM Projects
WHERE Budget >= 70000
AND status IN ('Ongoing', 'Pending');

---11
SELECT EmployeeID, 
    FirstName, 
    LastName, 
    Department, 
    Salary, 
    City
FROM Employees 
WHERE City = 'New York'
OR City = 'Toronto'
ORDER BY Salary DESC; 

---12
SELECT EmployeeID, 
    FirstName, 
    LastName, 
    Department, 
    Salary
FROM Employees 
ORDER BY Salary DESC
LIMIT 3;

--4. Aggregate Functions with GROUP BY & HAVING
---13 
SELECT Department, 
    SUM(salary) AS TotalSalary 
FROM Employees
GROUP BY Department 
ORDER BY TotalSalary DESC;

---14
SELECT City,
  AVG(Salary) AS AverageSalary
FROM Employees 
GROUP BY City 
HAVING AVG(Salary) > 65000 

---15
SELECT Department, 
  COUNT(EmployeeID) AS EmployeeCount
FROM Employees 
GROUP BY Department 
HAVING COUNT(EmployeeID) > 1;

---16 
SELECT Status, 
    COUNT(ProjectID) AS ProjectCount
FROM Projects
GROUP BY status 
HAVING COUNT(ProjectID) >= 2; 

---17 
SELECT A.EmployeeID, 
    A.FirstName, 
    A.LastName,
    B.SUM(Budget) AS TotalProjectBudget
FROM Employees AS A
INNER JOIN Projects AS B
ON A.EmployeeID = B.EmployeeID 
GROUP BY A.EmployeeID, 
    A.FirstName, 
    A.LastName
HAVING SUM(Budget) > 150000;



