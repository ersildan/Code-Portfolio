SELECT
    query_name,
    ROUND(AVG(CAST(rating AS NUMERIC) / position), 2) :: numeric AS quality,
    ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) :: numeric AS poor_query_percentage
FROM Queries
WHERE query_name is not null
GROUP BY query_name
