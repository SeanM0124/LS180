--Write a SQL query that will return the following data:

SELECT genre, count(id) FROM films GROUP BY genre ORDER BY count DESC;