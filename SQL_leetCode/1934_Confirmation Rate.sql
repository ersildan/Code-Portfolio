SELECT
    s.user_id,
    ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1::numeric ELSE 0::numeric END) / COUNT(s.user_id)::numeric, 2) as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;
