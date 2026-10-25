-- q08 — Customer profile by region. Columns region, number_of_customers, average_age, min_age, max_age from the customers table, grouped by region and ordered by region.
SELECT
    region,
    COUNT(*) AS number_of_customers,
    AVG(age) AS average_age,
    MIN(age) AS min_age,
    MAX(age) AS max_age
FROM customers
GROUP BY region
ORDER BY region ASC;
