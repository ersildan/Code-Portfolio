WITH temp_table AS (
    SELECT employee_id, department_id
    FROM Employee
    WHERE primary_flag = 'Y'
)
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'N' 
  AND employee_id NOT IN (SELECT employee_id FROM temp_table)

UNION ALL

SELECT * FROM temp_table;