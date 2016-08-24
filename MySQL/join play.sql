USE classicmodels;

SELECT * FROM customers LIMIT 5;
SELECT * FROM employees LIMIT 5;

SELECT e.employeeNumber, e.lastName, e.firstName, e.jobTitle, e.reportsTo, e2.employeeNumber, e2.lastName, e2.firstName, 
e2.jobTitle, e2.reportsTo
FROM employees e
JOIN employees e2 ON e.reportsTo = e2.employeeNumber;

SELECT e.employeeNumber, e.lastName, e.firstName, e.jobTitle, e.reportsTo, e2.employeeNumber, e2.lastName, e2.firstName, 
e2.jobTitle, e2.reportsTo
FROM employees e
JOIN employees e2 ON e.reportsTo = e2.employeeNumber
AND e2.reportsTo IS NOT NULL;

SELECT e.employeeNumber, e.lastName, e.firstName, e.jobTitle, e.reportsTo, e2.employeeNumber, e2.lastName, e2.firstName, 
e2.jobTitle, e2.reportsTo
FROM employees e
JOIN employees e2 ON e.reportsTo = e2.employeeNumber
AND e.firstName = e2.firstName;

SELECT e.employeeNumber, e.lastName, e.firstName, e.jobTitle, e.reportsTo, e2.employeeNumber, e2.lastName, e2.firstName, 
e2.jobTitle, e2.reportsTo
FROM employees e
JOIN employees e2 ON e.reportsTo = e2.employeeNumber
AND e.LastName = e2.lastName;
