/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

-- Total sales, Total customers, Total products, Total orders
SELECT 'total_sales' AS Measure_Name, SUM(sales_amount) AS Measure_Value FROM workspace.salesdb.fact_sales
UNION ALL
SELECT 'total_customers' AS Measure_Name, COUNT(DISTINCT customer_key) AS Measure_Value FROM workspace.salesdb.dim_customers
UNION ALL
SELECT 'active_customers' AS Measure_Name, COUNT(DISTINCT customer_key) AS Measure_Value FROM workspace.salesdb.fact_sales
UNION ALL
SELECT 'total_products' AS Measure_Name, COUNT(DISTINCT product_key) AS Measure_Value FROM workspace.salesdb.dim_products
UNION ALL
SELECT 'total_orders' AS Measure_Name, COUNT(DISTINCT order_number) AS Measure_Value FROM workspace.salesdb.fact_sales


