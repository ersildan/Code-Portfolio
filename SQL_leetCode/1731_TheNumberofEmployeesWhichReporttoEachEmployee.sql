SELECT 
    t.employee_id,
    t.name,
    COUNT(*) AS reports_count,
    ROUND(AVG(t2.age)) AS average_age
FROM Employees t
INNER JOIN Employees t2 ON t.employee_id = t2.reports_to
GROUP BY t.employee_id, t.name
HAVING COUNT(*) >= 1
ORDER BY t.employee_id;
