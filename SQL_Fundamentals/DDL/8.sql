/*
Add a semi_major_axis column for the semi-major axis of each planet's orbit;
the semi-major axis is the average distance from the planet's star as measured in astronomical
units (1 AU is the average distance of the Earth from the Sun). Use a data type of numeric,
and require that each planet have a value for the semi_major_axis.
*/

ALTER TABLE planets ADD COLUMN semi_major_axis numeric NOT NULL;

--Furthe Exploration:
/*
Assume the planets table already contains one or more rows of data.
What will happen when you try to run the above command?
*/

-- I assume it will fail, since there would already be null values. 
--To work around this, I think I would first add teh column without the NULL value, and then attempt to populate the rows appropriately, then apply the constraint
--Thsi may require further work depending on how the data is populated to ensure the id is matching
