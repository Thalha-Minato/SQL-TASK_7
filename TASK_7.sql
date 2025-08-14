CREATE DATABASE CUSTOMER 

USE CUSTOMER


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

CREATE VIEW CustomerOrderSummary AS
SELECT 
    c.name,
    SUM(o.amount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name

SELECT * FROM CustomerOrderSummary

CREATE VIEW CustomerPublic AS
SELECT name
FROM Customers  ---------------------If you don’t want users to see all columns in a table


GRANT SELECT ON CustomerPublic TO some_user   ----- IF I WANT TO ALLLOW  OR GIVE PERMISSION


