--Write a SQL query that will return the following data:

SELECT genre, SUM(duration) AS total_duration FROM films GROUP BY genre ORDER BY total_duration ASC;