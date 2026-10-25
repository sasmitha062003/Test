-- q06 — Orders by status. Columns status, number_of_orders, total_amount for all orders, grouped by status and ordered by number_of_orders descending.
SELECT status, COUNT(*) AS number_of_orders
FROM orders
GROUP BY status
ORDER BY status ASC;

