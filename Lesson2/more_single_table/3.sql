--Write a SQL query to list the ten states with the most rows in the people table in descending order.

SELECT state, COUNT(id) FROM people GROUP BY state ORDER BY count DESC LIMIT 10;