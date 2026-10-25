-- q10 — Customers who never ordered. Columns customer_id, first_name, last_name, region for customers that have no order at all, ordered by customer_id. Use a LEFT JOIN from customers to orders and test for the unmatched side.
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.region
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL
ORDER BY c.customer_id ASC;
