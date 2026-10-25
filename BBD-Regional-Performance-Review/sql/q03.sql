-- q03 — Five biggest completed orders. Columns order_id, customer_id, item, amount for completed orders, ordered by amount descending and then order_id ascending, restricted to the first 5 rows.
SELECT order_id,customer_id, item, amount
FROM orders
WHERE status = 'completed'
ORDER BY amount DESC, order_id ASC
LIMIT 5;
