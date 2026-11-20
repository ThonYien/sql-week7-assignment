# Week 7 Assignment: Database Design and Normalization

## Author
**Thon Yien Thon**

## Project Description
This project focuses on database design and normalization using MySQL. It demonstrates how to organize database tables, reduce data redundancy, and improve data integrity through First Normal Form (1NF) and Second Normal Form (2NF).

## Learning Objectives
- Understand database normalization.
- Apply First Normal Form (1NF).
- Apply Second Normal Form (2NF).
- Identify and eliminate partial dependencies.
- Create tables using primary keys and foreign keys.
- Retrieve related records using SQL JOIN statements.

## Assignment Questions

### Question 1: First Normal Form (1NF)
Transformed the `ProductDetail` table by ensuring that each row contains only one product per order.

### Question 2: Second Normal Form (2NF)
Separated the `OrderDetails` table into two tables:
- `Orders`: Stores order IDs and customer names.
- `OrderItems`: Stores products and quantities associated with each order.

## Tools Used
- MySQL
- MySQL Workbench
- Visual Studio Code
- GitHub

## How to Run
1. Open MySQL Workbench.
2. Connect to your MySQL server.
3. Select your database.
4. Open the `answer.sql` file.
5. Execute the SQL statements.
6. Check the Result Grid to verify the results.

## Repository Structure

```text
Week-7-Database-Normalization/
│
├── answer.sql
└── README.md
```

## Conclusion
This assignment improved my understanding of database normalization, data organization, primary keys, foreign keys, and relational database design. I learned how 1NF and 2NF help reduce data redundancy and maintain data integrity.
