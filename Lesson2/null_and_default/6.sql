/*
Write a SQL statement to add a new column, rainfall, to the temperatures table.
It should store millimeters of rain as integers and have a default value of 0.
*/

ALTER TABLE temperature ADD COLUMN rainfall integer DEFAULT 0 NOT NULL;
