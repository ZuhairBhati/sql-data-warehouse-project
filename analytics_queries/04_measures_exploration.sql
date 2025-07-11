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

-- Find the Total Sales
SELECT SUM(sales_amount) AS total_sales
FROM gold.fact_sales

-- Find how many items are sold
SELECT SUM(quantity) AS total_quantity
FROM gold.fact_sales

-- Find the average selling price
SELECT AVG(price) AS avg_price
FROM gold.fact_sales

-- Find the	Total Number of orders
SELECT COUNT(order_number) AS total_orders
FROM gold.fact_sales

SELECT COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales

-- Find the Total Number of products
SELECT COUNT(product_key) AS total_products
FROM gold.dim_products

SELECT COUNT(DISTINCT product_key) AS total_products
FROM gold.dim_products

-- Find the Total Number of customers
SELECT COUNT(customer_key) AS total_customers
FROM gold.dim_customers

-- Find the Total Number of customers that has placed the orders
SELECT COUNT(DISTINCT customer_key) AS total_customers
FROM gold.fact_sales

-- Generate a Report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Qunatity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total No. Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total No. Products', COUNT(product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total No. Customers', COUNT(customer_key) FROM gold.dim_customers
