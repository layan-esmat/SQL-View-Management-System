SQL View Management System

This project demonstrates how to create and use SQL Views in MySQL using three custom tables: customers, clothes, and purchase. It includes table creation, data insertion, and multiple view definitions following the requirements of Lab 9, with a focus on understanding how virtual tables work in relational databases.

Project Overview

The goal of this project is to practice creating SQL views that simplify data access, combine information from multiple tables, and filter records without modifying the original data.
The project includes:

Creating the base tables

Inserting sample data

Creating multiple SQL views

Querying, inserting, and deleting through views

Database Structure
1. customers

name

age

customerID (primary key)

rating

2. clothes

clothesID (primary key)

clothesName

clothesColor

3. purchase

purName

ID (foreign key referencing clothesID)

Views Implemented
V1

Shows all customer data.

V2

Shows only customer name and age.

V3

Combines customer information with clothes information.

V4

Shows only clothes with the color "red".

How to Use

Create the database and tables in MySQL.

Insert the provided sample data.

Run the CREATE VIEW statements.

Execute test queries on each view.

Insert or delete through views as needed.

Purpose

This project provides a clear demonstration of:

Virtual table creation

Working with SQL views

Joining multiple tables

Applying filters on views

It serves as a practical exercise for understanding how to manage views effectively inside a MySQL environment.
