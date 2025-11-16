SQL View Management System

A MySQL-based project demonstrating the creation and management of SQL Views using a simple relational database containing customers, clothes, and purchase data.
The project showcases how views can simplify queries, filter records, and combine data from multiple tables without altering the base tables.

Features

Structured relational database with 3 tables

Demonstrates different types of SQL views

Includes joins, filtering, and selective column views

Allows inserting into views to update the base table

Clean and simple dataset for learning

Fully written in standard MySQL syntax

Database Structure
1. customers Table
CREATE TABLE customers (
    name VARCHAR(20),
    age INT,
    customerID INT PRIMARY KEY,
    rating DECIMAL(3,1)
);

2. clothes Table
CREATE TABLE clothes (
    clothesID INT PRIMARY KEY,
    clothesName VARCHAR(50),
    clothesColor VARCHAR(20)
);

3. purchase Table
CREATE TABLE purchase (
    purName VARCHAR(50),
    ID INT,
    FOREIGN KEY (ID) REFERENCES clothes(clothesID)
);

Sample Data
Customers
INSERT INTO customers (name, age, customerID, rating) VALUES
('Layan', 22, 101, 4.8),
('Sara', 19, 102, 4.5),
('Faisal', 25, 103, 4.9),
('Nora', 30, 104, 3.9),
('Omar', 27, 105, 4.2);

Clothes
INSERT INTO clothes VALUES
(1, 'T-Shirt', 'red'),
(2, 'Jeans', 'blue'),
(3, 'Hoodie', 'black'),
(4, 'Dress', 'red'),
(5, 'Jacket', 'green');

Purchase
INSERT INTO purchase VALUES
('First Purchase', 1),
('Second Purchase', 4),
('Third Purchase', 2),
('Winter Purchase', 3),
('Gift Purchase', 5);

Views Implemented
V1 — All Customer Data
CREATE VIEW V1 AS
SELECT * FROM customers;

V2 — Customer Name + Age
CREATE VIEW V2 AS
SELECT name, age FROM customers;

V3 — Customers + Clothes (Joined)
CREATE VIEW V3 AS
SELECT c.name AS customerName,
       c.age,
       cl.clothesName,
       cl.clothesColor
FROM customers AS c
JOIN clothes AS cl
ON c.customerID = cl.clothesID;

V4 — Only Red Clothes
CREATE VIEW V4 AS
SELECT *
FROM clothes
WHERE clothesColor = 'red';

How to Use This Project

Clone the repository

Run the table creation SQL scripts

Insert the sample data

Apply all view creation commands

Test the views using queries such as:

SELECT * FROM V1 WHERE age > 20;
Purpose of the Project

This project provides hands-on experience with:

Virtual tables

SQL views

Table joins

Filtering data

Understanding how views interact with base tables
