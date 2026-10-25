-- Q11: Region/month report for completed orders
-- LEFT JOIN keeps customers even if they have no matching orders;
-- COUNT(DISTINCT customer_id) avoids counting a customer more than once.
SELECT
    c.region,
    o.order_month,
    COUNT(o.order_id) AS number_of_orders,
    COUNT(DISTINCT c.customer_id) AS number_of_customers,
    SUM(o.amount) AS total_revenue,
    AVG(o.amount) AS average_revenue
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.status = 'completed'
GROUP BY c.region, o.order_month
ORDER BY c.region ASC, o.order_month ASC;
-- INNER JOIN includes only customers with matching completed orders.
-- COUNT(DISTINCT c.customer_id) counts each customer once per region/month.
