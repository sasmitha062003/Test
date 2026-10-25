-- q09 — Order-level fact table. Columns order_id, order_month, first_name, last_name, region (the customer's region), rep_name, item, quantity, amount, status for every order, produced by joining orders, customers and reps on their key columns, ordered by order_id.
SELECT
    o.order_id,
    o.order_month,
    c.first_name,
    c.last_name,
    c.region,
    r.rep_name,
    o.item,
    o.quantity,
    o.amount,
    o.status
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
JOIN reps AS r
    ON c.rep_id = r.rep_id
ORDER BY o.order_id ASC;
