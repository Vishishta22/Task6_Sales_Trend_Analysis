-- Ensure the correct database is selected
USE online_sales_db;

-- Analyze monthly revenue and order volume
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    CONCAT(CAST(YEAR(order_date) AS CHAR), '-', LPAD(CAST(MONTH(order_date) AS CHAR), 2, '0')) AS ym,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2024-12-31'
GROUP BY YEAR(order_date), MONTH(order_date), CONCAT(CAST(YEAR(order_date) AS CHAR), '-', LPAD(CAST(MONTH(order_date) AS CHAR), 2, '0'))
ORDER BY YEAR(order_date), MONTH(order_date);