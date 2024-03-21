-- Write a SQL statement that will create the following table, people:
/*
  name	age	occupation
  Abby	34	biologist
  Mu'nisah	26	NULL
  Mirabelle	40	contractor
  */

CREATE TABLE people(
name varchar(50),
age integer,
occupation varchar(50) DEFAULT NULL
);
