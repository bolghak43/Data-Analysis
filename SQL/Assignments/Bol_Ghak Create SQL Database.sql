
-- 3. Create a new database named CompanyDB.
-- CREATE DATABASE CompanyDB;

use companydb;

-- 4. Create a table named Employees with the following structure:

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);


SELECT * FROM Employees;

-- 5. Insert at least 5 sample records into the Employees table.

INSERT INTO Employees (FirstName, LastName, Age, Department, Salary)
VALUES 
('Alice', 'Johnson', 29, 'Marketing', 5200.00),
('Bob', 'Smith', 34, 'IT', 7500.00),
('Clara', 'Lee', 41, 'HR', 6800.00),
('David', 'Kim', 27, 'Finance', 6100.00),
('Ella', 'Nguyen', 30, 'IT', 8000.00);

-- 6. Take a screenshot of your MySQL Workbench setup showing the created database and table.

