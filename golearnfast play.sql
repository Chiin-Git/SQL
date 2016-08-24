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

USE classicmodels;
SELECT DISTINCT lastName
FROM employees;

SELECT ALL FROM employees LIMIT 5;

FORMAT(SUM(sod.OrderQty * sod.UnitPrice), 1);


USE SalesOrdersExample;

SELECT c.CustFirstName, c.CustLastName, c.CustomerID, cc.CustomerID
FROM Customers c
JOIN EntertainmentAgencyExample.Customers cc
ON c.CustFirstName = cc.CustFirstName
AND c.CustLastName = cc.CustLastName;


SELECT CONCAT(c.CustFirstName, " ", c.CustLastName) as fullname, c.CustCity, CONCAT(ec.CustFirstName, " ", ec.CustLastName) as entfullname, ec.CustCity
FROM Customers c
LEFT JOIN EntertainmentAgencyExample.Customers ec
ON c.CustFirstName = ec.CustFirstName
WHERE c.CustCity <> ec.CustCity
ORDER BY c.CustCity;




