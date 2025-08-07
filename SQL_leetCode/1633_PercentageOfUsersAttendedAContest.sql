SELECT
    t2.contest_id,
    ROUND(
        (COUNT(t1.user_id) :: numeric / (SELECT COUNT(user_id) FROM Users)) * 100, 2
    ) as percentage

FROM Users t1
LEFT JOIN Register t2 ON t1.user_id = t2.user_id
WHERE t2.contest_id IS NOT NULL
GROUP BY contest_id
ORDER BY percentage DESC, contest_id