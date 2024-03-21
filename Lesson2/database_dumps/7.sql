--Write a SQL statement that will return the title and age in years of each movie, with newest movies listed first:

SELECT title, 2024 - year AS age FROM films ORDER BY 2024 - year;