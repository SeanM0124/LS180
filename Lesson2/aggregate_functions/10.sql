--Write a SQL query that will return the following data:

SELECT year /10 * 10 AS decade, genre, string_agg(title, ', ') AS films FROM films 
GROUP BY decade, genre ORDER BY decade, genre;