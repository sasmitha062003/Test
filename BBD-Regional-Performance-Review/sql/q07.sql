-- q07 — Strong products. Columns item, number_of_orders, revenue for completed orders grouped by item, keeping only items whose revenue is greater than 20000, ordered by revenue descending.
SELECT
    item,
    COUNT(*) AS number_of_orders,
    SUM(amount) AS revenue
FROM orders
WHERE status = 'completed'
GROUP BY item
HAVING SUM(amount) > 20000
ORDER BY revenue DESC;
