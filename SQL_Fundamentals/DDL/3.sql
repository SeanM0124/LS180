/*
Hmm... it turns out that 25 characters isn't enough room to store a star's complete name.
For instance, the star "Epsilon Trianguli Australis A" requires 30 characters.
Modify the column so that it allows star names as long as 50 characters.
*/

ALTER TABLE stars ALTER COLUMN name TYPE varchar(50);

--Further Exploration:
--Assume the stars table already contains one or more rows of data. What will happen when you try to run the above command?
ALTER TABLE stars ALTER COLUMN name TYPE varchar(25);

/*
If the existing data is within the bounds of the constraint, there is no issue. However if you try to lower it under the length of existing data, you will get an error
*/