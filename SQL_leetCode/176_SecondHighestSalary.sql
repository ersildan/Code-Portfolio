SELECT 
    (SELECT DISTINCT salary 
     FROM Employee 
     ORDER BY salary DESC 
     LIMIT 1 OFFSET 1) AS SecondHighestSalary;


-- lol my first solved not work
-- select
--     CASE 
--     WHEN MIN(salary) = MAX(salary) THEN NULL 
--     WHEN COUNT(salary) = 2 THEN MAX(salary)
--     ELSE (
--         select salary
--         from Employee
--         order by salary ASC
--         limit 1 offset 1)
--     END
--     AS SecondHighestSalary
-- from Employee;