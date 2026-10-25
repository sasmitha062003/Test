-- q05 — Headline KPIs. One row with total_orders (count of orders), total_revenue, avg_order_value, min_order_value, max_order_value, computed over completed orders only.
SELECT
    COUNT(*) AS total_orders,
    SUM(amount) AS total_revenue,
    AVG(amount) AS avg_order_value,
    MIN(amount) AS min_order_value,
    MAX(amount) AS max_order_value
FROM orders
WHERE status = 'completed';
