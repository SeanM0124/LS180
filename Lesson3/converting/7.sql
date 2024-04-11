--Write a SQL statement that determines how many films each director in the database has directed.
--Sort the results by number of films (greatest first) and then name (in alphabetical order).

SELECT directors.name, count(directors_films.director_id) AS number_of_films FROM directors
INNER JOIN directors_films ON directors.id = directors_films.director_id
GROUP BY directors.id
ORDER BY number_of_films DESC, directors.name ASC;

