/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/
-----------------------------------------------------------------------------
-- CUSTOMERS DIMENSIONS
-----------------------------------------------------------------------------
-- Retrieve the unique list of countries our customers come from
SELECT DISTINCT country FROM workspace.salesdb.dim_customers;

-- Customers's Marital Status
SELECT DISTINCT marital_status FROM workspace.salesdb.dim_customers;

-- Customers's Gender
SELECT DISTINCT gender FROM workspace.salesdb.dim_customers;

-----------------------------------------------------------------------------
-- PRODUCTS DIMENSIONS 
-----------------------------------------------------------------------------
-- Retrieve a list of unique categories, subcategories, and products
SELECT DISTINCT 
  category,
  subcategory,
  product_name
FROM workspace.salesdb.dim_products
ORDER BY  category, subcategory, product_name
