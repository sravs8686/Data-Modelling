-- Total revenue by category (Star)
SELECT category, SUM(quantity * price) AS total_revenue
FROM fact_orders
JOIN dim_product USING(product_id)
GROUP BY category
ORDER BY total_revenue DESC;

-- Total revenue by region (Snowflake)
SELECT r.region_name, SUM(f.quantity * f.price) AS total_revenue
FROM fact_orders f
JOIN dim_customer c ON f.customer_id = c.customer_id
JOIN dim_region r ON c.region_id = r.region_id
GROUP BY r.region_name
ORDER BY total_revenue DESC;
