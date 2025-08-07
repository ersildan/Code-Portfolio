/*
Input: 
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+
Output: 
+-----------+
| fraction  |
+-----------+
| 0.33      |
+-----------+
Explanation: 
Only the player with id 1 logged back in after the first day he had logged in so the answer is 1/3 = 0.33
*/


WITH temp AS (
    SELECT 
        player_id, 
        MIN(event_date) AS mn_day
    FROM Activity
    GROUP BY player_id)

SELECT 
    ROUND(COALESCE(
        SUM(CASE WHEN a.event_date - t.mn_day = 1  THEN 1  ELSE 0 END):: numeric /
        COUNT(DISTINCT a.player_id), 0), 2) fraction

FROM Activity a
INNER JOIN temp t ON a.player_id = t.player_id;

-- That for see  how to working 'join'
-- SELECT 
--     a.*, 
--     t.mn_day
-- FROM Activity a
-- INNER JOIN temp t ON a.player_id = t.player_id;
