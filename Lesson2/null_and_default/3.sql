/*

Write the SQL statement to create a table called temperatures to hold the following data:
Keep in mind that all rows in the table should always contain all three values.
*/

CREATE TABLE temperatures(
 date date NOT NULL DEFAULT NOW(),
 low integer NOT NULL,
 high integer NOT NULL);