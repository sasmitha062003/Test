-- q01 — Pending orders. Columns order_id, customer_id, item, amount for orders with status pending, ordered by order_id ascending.
SELECT order_id, customer_id, item, amount 
FROM orders
WHERE status = 'pending'
ORDER BY order_id ASC;
