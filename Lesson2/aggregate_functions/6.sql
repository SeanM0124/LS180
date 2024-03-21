--Write a SQL query that determines the average duration for each genre in the films table, rounded to the nearest minute.

SELECT genre, ROUND(avg(duration)) AS average_duration FROM films GROUP BY genre ORDER BY genre;