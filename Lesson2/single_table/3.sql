--Write 3 SQL queries that can be used to retrieve the second row of the table shown in #1 and #2.

SELECT * FROM people LIMIT 1 OFFSET 1;

SELECT name, age, occupation FROM people WHERE name = 'Mu''nisah';

SELECT * FROM people WHERE age < 40 OFFSET 1;