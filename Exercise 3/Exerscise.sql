--1.Table: products
SELECT product_name,
        price,
CASE 
    WHEN price > 1000 THEN 'Expensive'
    WHEN price BETWEEN 100 AND 1000 THEN 'Mid-range'
    WHEN price < 100 THEN 'Budget'
    END AS price_category
FROM products;

--2. Table: orders
SELECT customer_name,
        amount,
CASE 
    WHEN amount >= 1000 THEN 'High Value'
    WHEN amount BETWEEN 500 AND 999.99 THEN 'Medium Value'
    WHEN amount < 500 THEN 'Low Value'
    END AS order_value_category
FROM orders;

--3. Table: employees
SELECT emp_name,
        department,
        salary,
CASE
  WHEN department = 'IT' AND salary > 80000 THEN 'Senior IT'
  WHEN department = 'HR' AND salary > 55000 THEN 'Experienced HR'
  ELSE 'Staff'
END AS position_level
FROM employees;

--4. Table: students
SELECT student_name,
        score,
CASE 
  WHEN score >= 90 THEN 'A'
  WHEN score BETWEEN 80 AND 89 THEN 'B'
  WHEN score BETWEEN 70 AND 79 THEN 'C'
  WHEN score BETWEEN 60 AND 69 THEN 'D'
  WHEN score < 60 THEN 'F'
  END AS grade
FROM students 

--5. Table: deliveries
SELECT *,
CASE 
  WHEN delivery_time_minutes <= 30 THEN 'Fast'
  WHEN delivery_time_minutes BETWEEN 31 AND 60 THEN 'On Time'
  WHEN delivery_time_minutes > 60 THEN 'Late'
  END AS performance
FROM deliveries;

--6. Table: tickets
SELECT issue_type,
        priority,
CASE 
  WHEN priority = 3 THEN 'High'
  WHEN priority = 2 THEN 'Medium'
  WHEN priority = 1 THEN 'Low'
  END AS priority_label
FROM tickets; 

--7. Table: attendance
SELECT student_id,
      (days_present/total_days) * 100 AS attendance_percentage,
CASE 
  WHEN (days_present/total_days) * 100  >= 90 THEN 'Excellent'
  WHEN (days_present/total_days) * 100  BETWEEN 75 AND 89 THEN 'Good'
  WHEN (days_present/total_days) * 100  < 75 THEN 'Needs Improvement'
  END AS attendance_status
FROM attendance;

--8. Table: products_inventory
SELECT product_id,
      stock_qty,
CASE
  WHEN stock_qty = 0 THEN 'Out of Stock'
  WHEN stock_qty BETWEEN 1 AND 5 THEN 'Low Stock'
  WHEN stock_qty > 5 THEN 'In Stock'
  END AS stock_status
FROM products_inventory 

--9. Table: classes
SELECT subject, 
      enrolled_students,
CASE 
  WHEN enrolled_students >= 25 THEN 'Large'
  WHEN enrolled_students BETWEEN 10 AND 24 THEN 'Medium'
  WHEN enrolled_students < 10 THEN 'Small'
  END AS class_size_category
FROM classes;

--10. Table: payments
SELECT payment_id,
      payment_method,
      amount,
CASE 
  WHEN payment_method = 'Cash' AND amount >= 200 THEN 'Eligible for Discount'
  ELSE 'Not Eligible'
  END AS discount_eligibility
FROM payments; 
