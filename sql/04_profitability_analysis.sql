USE superstore;

-- Profit by sub-category
SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percent
FROM sales
GROUP BY sub_category
ORDER BY total_profit DESC;


-- Bottom 10 products by profit
SELECT
    product_id,
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY
    product_id,
    product_name
ORDER BY total_profit ASC
LIMIT 10;


-- Top 10 products by sales
SELECT
    product_id,
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY
    product_id,
    product_name
ORDER BY total_sales DESC
LIMIT 10;


-- Profitability by discount level
SELECT
    discount,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percent
FROM sales
GROUP BY discount
ORDER BY discount;


-- Profit margin by shipping mode
SELECT
    ship_mode,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percent
FROM sales
GROUP BY ship_mode
ORDER BY profit_margin_percent DESC;