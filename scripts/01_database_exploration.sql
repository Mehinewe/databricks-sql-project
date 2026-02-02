/*
===============================================================================
Database Exploration
===============================================================================
Purpose:
    - To explore the structure of the database, including the list of tables and their schemas.
    - To inspect the columns and metadata for specific tables.

Table Used:
    - SHOW TABLES
    - DESCRIBE TABLE
===============================================================================
*/


USE salesdb;

-- Explore All objects in the Database
SHOW TABLES ;

-- Retrieve all columns for specific tables
DESCRIBE TABLE workspace.salesdb.dim_customers;
DESCRIBE TABLE workspace.salesdb.dim_products;
DESCRIBE TABLE workspace.salesdb.fact_sales;
