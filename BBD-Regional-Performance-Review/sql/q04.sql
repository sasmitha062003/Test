-- q04 — Target customer segment. Columns customer_id, first_name, last_name, region, age for customers in the North or West region whose age is between 25 and 40 inclusive, ordered by age ascending and then customer_id ascending. Use the IN and BETWEEN operators.
SELECT customer_id, first_name, last_name, region, age
FROM customers
WHERE region IN ('North', 'West')
  AND age BETWEEN 25 AND 40
ORDER BY age ASC, customer_id ASC;
