-- Write your PostgreSQL query statement below
-- WITH temp_table AS (
--     SELECT COUNT(*) AS count
--     FROM Product
-- )

-- SELECT customer_id
-- FROM (
--     SELECT DISTINCT customer_id, COUNT(product_key) OVER (PARTITION BY customer_id) as count
--     FROM Customer
--     GROUP BY customer_id, product_key
-- )
-- WHERE count = (
--     SELECT count
--     FROM temp_table
-- )

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);
