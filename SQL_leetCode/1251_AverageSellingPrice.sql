SELECT
    p.product_id,
    COALESCE(ROUND(SUM(p.price * u.units)::numeric / SUM(u.units), 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id
where (u.purchase_date between start_date and end_date) OR u.purchase_date IS NULL
GROUP BY p.product_id
