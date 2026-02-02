/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATEPART(), DATETRUNC(), FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()
===============================================================================
*/
-- Date Range Exploration
SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(YEAR, MIN(order_date), MAX(order_date)) AS years,
DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS months
FROM workspace.salesdb.fact_sales;

-- SALES over time
SELECT
date_trunc('month', order_date) AS orderdate,
SUM(sales_amount) AS total_sales,
COUNT(DISTINCT customer_key) AS number_of_customers,
COUNT(DISTINCT order_number) AS number_of_orders,
SUM(quantity) AS total_quantity
FROM workspace.salesdb.fact_sales
GROUP BY orderdate
ORDER BY orderdate;
