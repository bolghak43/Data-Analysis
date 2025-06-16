USE STORE;

-- Create Tables:
CREATE TABLE DomesticSales (
    SaleID INT,
    ProductID INT,
    SaleAmount DECIMAL(10, 2)
);


CREATE TABLE InternationalSales (
    SaleID INT,
    ProductID INT,
    SaleAmount DECIMAL(10, 2)
);


-- Inserting data into DomesticSales table

INSERT INTO DomesticSales (SaleID, ProductID, SaleAmount) VALUES
(1, 101, 500.00),
(2, 102, 200.00),
(3, 103, 300.00),
(4, 101, 400.00);


SELECT * FROM domesticsales;


-- Inserting data into InternationalSales table

INSERT INTO InternationalSales (SaleID, ProductID, SaleAmount) VALUES
(1, 101, 550.00),
(2, 102, 250.00),
(3, 104, 300.00),
(4, 105, 450.00);

SELECT * FROM internationalsales;


-- Use UNION to Combine Data:
-- combining the two tables using union
SELECT ProductID, SaleAmount
FROM domesticsales
UNION
SELECT ProductID, SaleAmount
FROM internationalsales;


--  Example 2: Using UNION to Combine Different Columns
-- Suppose we have two tables, CustomersUS and CustomersEU, and we want to combine the customer data from both regions.
-- Create Tables:

CREATE TABLE CustomersUS (
    CustomerID INT,
    CustomerName VARCHAR(100),
    Region VARCHAR(50)
);


CREATE TABLE CustomersEU (
    CustomerID INT,
    CustomerName VARCHAR(100),
    Region VARCHAR(50)
);


-- Inserting data into CustomersUS table
INSERT INTO CustomersUS (CustomerID, CustomerName, Region) VALUES
(1, 'John Doe', 'US'),
(2, 'Jane Smith', 'US');

-- Inserting data into CustomersEU table
INSERT INTO CustomersEU (CustomerID, CustomerName, Region) VALUES
(3, 'Max Muller', 'EU'),
(4, 'Anna Schmidt', 'EU');



-- Use UNION to Combine Data:

SELECT CustomerID, CustomerName, 'US' AS Region 
FROM CustomersUS
UNION  
SELECT CustomerID, CustomerName, 'EU' AS Region 
FROM CustomersEU;



