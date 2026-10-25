use sales_project;

-- D1: Find regions with completed-order revenue above INR 80,000.
-- Join orders to customers to obtain each customer's region.
-- HAVING filters the aggregated revenue after grouping.

SELECT
    c.region,
    SUM(o.amount) AS revenue
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
WHERE o.status = 'completed'
GROUP BY c.region
HAVING SUM(o.amount) > 80000
ORDER BY revenue DESC;

