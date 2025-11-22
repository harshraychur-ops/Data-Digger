# DataDigger2 SQL Project

This repository contains a complete SQL script for creating and managing
a simple e-commerce style database named **DataDigger2**.\
It includes table creation, data insertion, queries, and cleanup
operations.

------------------------------------------------------------------------

## 🚀 Features

### ✔ Database & Tables

The script creates the following tables:

-   **Customers** -- Stores customer details\
-   **Products** -- Contains product information\
-   **Orders** -- Tracks customer orders\
-   **OrderDetails** -- Maps products to orders with quantities and
    subtotals

------------------------------------------------------------------------

## 📥 Inserted Sample Data

The script inserts sample records for:

-   Customers\
-   Products\
-   Orders\
-   Order details

This helps in quickly testing queries without manual data entry.

------------------------------------------------------------------------

## 🔍 Queries Included

### Select Queries

-   Fetch all customers\
-   Fetch products with price \> 5000

### Update Query

-   Update the price of 'Headphones'

### Delete Query

-   Delete a customer by ID

### Aggregate Functions

-   Count customers\
-   Average price of products\
-   Total sales from all orders

### Advanced Join Query

A multi-table join that shows:

-   Order ID\
-   Customer Name\
-   Product Name\
-   Quantity\
-   Subtotal\
-   Order Date

------------------------------------------------------------------------

## 🧹 Cleanup

At the end of the script, all tables can be dropped using:

    DROP TABLE IF EXISTS OrderDetails, Orders, Products, Customers;

------------------------------------------------------------------------

## 📦 How to Use

1.  Copy the SQL script into your MySQL client (phpMyAdmin, MySQL
    Workbench, XAMPP, etc.)
2.  Run the script in order.
3.  Test queries or modify them as needed.
4.  Use the dataset for learning SQL, practicing joins, aggregate
    functions, and CRUD operations.

------------------------------------------------------------------------

## 📁 Files Included

-   **schema.sql** *(not included here, but you can save your script as
    this file)*\
-   **README.md** *(this file)*

------------------------------------------------------------------------

## 📜 License

This project is free to use for learning and practice purposes.

------------------------------------------------------------------------

## ✨ Author

Created by **Harsh Raychur**.\
Feel free to fork, modify, and learn!
