USE superstore;

-- Total records
SELECT COUNT(*) AS total_records
FROM sales;

-- Date range
SELECT
    MIN(order_date_clean) AS first_order_date,
    MAX(order_date_clean) AS last_order_date
FROM sales;

-- Distinct orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- Distinct customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM sales;

-- Distinct products
SELECT COUNT(DISTINCT product_id) AS total_products
FROM sales;

-- Check for missing important values
SELECT
    SUM(order_id IS NULL) AS missing_order_ids,
    SUM(customer_id IS NULL) AS missing_customer_ids,
    SUM(product_id IS NULL) AS missing_product_ids,
    SUM(sales IS NULL) AS missing_sales,
    SUM(profit IS NULL) AS missing_profit
FROM sales;