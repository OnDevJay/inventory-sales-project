-- Query 1: Find Products with Low Stock
SELECT p.product_name, i.stock_level, i.warehouse
FROM inventory i
JOIN products p ON i.product_id = p.product_id
WHERE i.stock_level < 20;

-- Query 2: Total Sales for Each Product
SELECT p.product_name, SUM(s.quantity_sold) AS total_quantity_sold, SUM(s.sale_amount) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Query 3: Best-Selling Products by Category
SELECT p.category, p.product_name, SUM(s.sale_amount) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category, p.product_name
ORDER BY total_revenue DESC;

-- Query 4: Monthly Sales Trends
SELECT p.product_name, STRFTIME('%m', s.sale_date) AS sale_month, SUM(s.sale_amount) AS monthly_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name, sale_month
ORDER BY sale_month;
