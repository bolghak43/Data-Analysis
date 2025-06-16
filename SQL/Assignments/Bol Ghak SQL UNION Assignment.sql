--  Task 1 
-- Write a query to combine customer data from both tables, ensuring there are
-- no duplicate customers (based on CustomerID and CustomerName).

SELECT CustomerID, CustomerName, PurchaseAmount
FROM OnlinePurchases
UNION 
SELECT CustomerID, CustomerName, PurchaseAmount
FROM InstorePurchases;


-- Task 2: Combining Product Data
-- Write a query to combine the data from both tables, and make sure to include
-- all products from both tables (i.e., include duplicates if the same product
-- appears in both tables).

SELECT ProductID, ProductName, Price
FROM ProductsA
UNION
SELECT ProductID, ProductName, Price
FROM ProductsB