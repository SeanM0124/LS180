--Write a SQL query that determines the average duration across all the movies in the films table, rounded to the nearest minute.

SELECT ROUND(avg(duration)) FROM films;