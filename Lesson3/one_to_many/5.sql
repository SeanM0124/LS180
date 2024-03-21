--Write a SQL statement that attempts to insert a duplicate number for a new contact but fails. What error is shown?

INSERT INTO contacts (first_name, last_name, number)
VALUES('William', 'Swift', 7204890809);

ERROR:  duplicate key value violates unique constraint "number_unique"