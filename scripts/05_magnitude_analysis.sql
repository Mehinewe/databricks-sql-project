/*
===============================================================================
Magnitude Analysis
===============================================================================
Purpose:
    - To quantify data and group results by specific dimensions.
    - For understanding data distribution across categories.

SQL Functions Used:
    - Aggregate Functions: SUM(), COUNT(), AVG()
    - GROUP BY, ORDER BY
===============================================================================
*/

-- Top 5 products by revenue
SELECT 
 p.category,
 p.product_name,
 SUM(s.sales_amount) AS total_revenue
 FROM workspace.salesdb.fact_sales s 
 LEFT JOIN workspace.salesdb.dim_products p  USING (product_key)
 GROUP BY  p.category, p.product_name
 ORDER BY SUM(s.sales_amount) DESC LIMIT 5;

 -- Revenue by category
 SELECT 
 p.category,
 SUM(s.sales_amount) AS total_revenue
 FROM workspace.salesdb.fact_sales s 
 LEFT JOIN workspace.salesdb.dim_products p  USING (product_key)
 GROUP BY  p.category
 ORDER BY SUM(s.sales_amount) DESC ;






 
