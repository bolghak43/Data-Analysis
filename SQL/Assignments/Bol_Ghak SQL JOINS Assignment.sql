use XYZ;

-- Table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

SELECT * FROM customers;

INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Miami');

-- Table: orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10, 2)
);

SELECT * FROM orders;

INSERT INTO orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 1200.00),
(102, 2, 'Phone', 800.00),
(103, 2, 'Tablet', 400.00),
(104, 5, 'Monitor', 300.00);



-- Jioning the two table 

SELECT customers.customer_id, customers.name, orders.order_id, orders.product
FROM customers 
JOIN orders ON customers.customer_id = orders.customer_id;


-- INNER JOIN - Examples
-- List customers who have made at least one order

SELECT customers.customer_id, customers.name, orders.order_id, orders.product, orders.amount
FROM customers 
INNER JOIN orders ON customers.customer_id = orders.customer_id;


-- Get order details with customer names only for matched records

SELECT o.order_id, o.product, o.amount, c.name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;


-- Show customers and their total amount spent

SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;


-- LEFT JOIN - Examples
-- Show all customers and their orders if they exist

SELECT c.customer_id, c.name, o.order_id, o.product
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;


-- Find customers who haven't made any orders

SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- List all customers and count of orders (0 if none)

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;


-- RIGHT JOIN - Examples
-- Show all orders and the customer who made them

SELECT o.order_id, o.product, c.name
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;


-- Find unmatched orders (orders made by unknown customers)

SELECT o.order_id, o.product
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;


-- List all orders with customers and show 'Unknown' if not found

SELECT o.order_id, o.product, COALESCE(c.name, 'Unknown') AS customer_name
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;


-- FULL OUTER JOIN - Examples
-- Show all customers and all orders whether matched or not

SELECT c.name, o.product, o.amount
FROM customers c
 JOIN orders o ON c.customer_id = o.customer_id;

-- Find customers without orders and orders without customers

SELECT c.name, o.product
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL OR o.customer_id IS NULL;

 
-- Summarize total spending per customer including unmatched orders

SELECT COALESCE(c.name, 'Unknown') AS customer_name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;



-- Final Project: Join Analytics Challenge
-- Use the `customers` and `orders` tables to answer the following:

-- 1.	List all customers along with the number of orders they’ve placed.

SELECT c.customer_id, c.name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- 2.	Find customers who haven’t placed any orders.

SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- 3.	Find orders that were placed by unknown customers (those not in the customer list).

SELECT o.order_id, o.customer_id, o.product, o.amount
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- 4.	Calculate the total amount spent per customer.

SELECT c.customer_id, c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- 5.	Show a combined list of all customers and all orders (even unmatched ones).

SELECT c.customer_id, c.name, o.order_id, o.product, o.amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, c.name, o.order_id, o.product, o.amount
FROM orders o
LEFT JOIN customers c ON c.customer_id = o.customer_id;



-- 6.	Provide a summary: number of matched, unmatched, and total records when joining the tables.


-- Matched records
SELECT COUNT(*) AS matched_records
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- Unmatched customers (no orders)
SELECT COUNT(*) AS unmatched_customers
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Unmatched orders (unknown customers)
SELECT COUNT(*) AS unmatched_orders
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Total combined records
SELECT 
    (SELECT COUNT(*) FROM customers) + 
    (SELECT COUNT(*) FROM orders WHERE customer_id NOT IN (SELECT customer_id FROM customers)) AS total_combined;


