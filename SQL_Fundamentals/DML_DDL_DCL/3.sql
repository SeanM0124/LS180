/*
Does the following statement use the DDL or DML component of SQL?
*/

CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);

/*
The above statement uses DDL, as shown by its CREATE statement, it is creating a table.
*/