# E-Commerce Logical Data Modeling Project
## Description

This project consists of the logical data modeling for an e-commerce system database, including the main entities Customer, Product, Order, Payment and Delivery.

The logical model was developed following these steps:

    Conceptual Modeling: ER diagrams created to represent entities, attributes and relationships
    Logical Modeling: conceptual model converted to a relational model
    Physical Modeling: creation of the SQL script with data types, keys, indexes and constraints

The database implements primary and foreign keys to ensure referential integrity. 1:N and N:M relationships were mapped as per the EER diagram.

In addition to table creation, initial data was inserted and complex SQL queries were formulated involving:

    SELECT, WHERE for filtering
    Expressions and functions for derived attributes
    ORDER BY for sorting
    GROUP BY and HAVING for grouping
    INNER JOIN for table joins

The project aims to answer questions like: how many orders per customer, product and supplier relations, supplier and product names, among others.

The database was modeled using MySQL version 8.0. The SQL code and diagrams are available in the XXXX repository.

## Logical Model

The logical model was implemented with the following entities:

    Customers
    Products
    Orders
    Order Items
    Payments
    Deliveries

Key attributes:

    Customer: customer_id
    Product: product_id
    Order: order_id
    Order Item: order_item_id
    Payment: payment_id
    Delivery: delivery_id

Relationships:

    Customers place Orders (1:N)
    Orders contain Order Items (1:N)
    Orders have Payments (1:N)
    Orders have Deliveries (1:1)
    Products relate to Order Items (N:M)

## Physical Model

The physical model was implemented in MySQL 8.0. The SQL script includes:

    Table creation with data types
    Primary and foreign key constraints
    Indexes
    Sample data insertion

## Queries

The database allows answering business questions like:

    How many orders per customer?
    Which suppliers are also customers?
    Product and supplier stocks
    Supplier and product names

Through SQL queries using:

    SELECT, WHERE
    Aggregate functions
    JOIN clauses
    GROUP BY, HAVING
    ORDER BY
    Subqueries
    Set operations

The full SQL code is available in the repository.