
-- WEEK 7 ASSIGNMENT
-- DATABASE DESIGN AND NORMALIZATION
-- Author: Thon Yien Thon

-- QUESTION 1: ACHIEVING FIRST NORMAL FORM (1NF)

-- Create a new table where each row contains
-- only one product per order.

CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    PRIMARY KEY (OrderID, Product)
);

-- Insert normalized records into the table.

INSERT INTO ProductDetail_1NF
(OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Display the normalized records.

SELECT * FROM ProductDetail_1NF;


-- QUESTION 2: ACHIEVING SECOND NORMAL FORM (2NF)

-- Partial Dependency:
-- CustomerName depends only on OrderID,
-- not on the entire composite key (OrderID, Product).
--
-- Solution:
-- Separate order information from product details.


-- Step 1: Create the Orders table.

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Create the OrderItems table.

CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Step 3: Insert records into the Orders table.

INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Step 4: Insert records into the OrderItems table.

INSERT INTO OrderItems (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- Step 5: Display records from the Orders table.

SELECT * FROM Orders;

-- Step 6: Display records from the OrderItems table.

SELECT * FROM OrderItems;

-- Step 7: Join both tables to view complete order details.

SELECT
    Orders.OrderID,
    Orders.CustomerName,
    OrderItems.Product,
    OrderItems.Quantity
FROM Orders
INNER JOIN OrderItems
ON Orders.OrderID = OrderItems.OrderID;
