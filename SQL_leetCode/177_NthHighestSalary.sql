CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
    SELECT DISTINCT e.salary
    FROM (
        SELECT 
            e1.salary,
            DENSE_RANK() OVER (ORDER BY e1.salary DESC) as rank
        FROM Employee e1
    ) e
    WHERE e.rank = N
  );
END;
$$ LANGUAGE plpgsql;