-- q02 — Missing amounts. Columns order_id, customer_id, item, status for orders whose amount is missing, ordered by order_id.
SELECT order_id, customer_id, item, status
FROM orders
WHERE amount IS NULL
ORDER BY order_id ASC;
