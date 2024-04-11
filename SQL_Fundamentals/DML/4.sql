/*
We want to grab all parts that have a part_number that starts with 3. Write a SELECT query to get this information. This table may show all attributes of the parts table.
*/

SELECT * FROM parts WHERE part_number::text LIKE '3%';

/*
Convert the number to text temporarily and then use the LIKE operator to see if it starts with a 3
To do this use a type conversion ::type to change to

Alternatives:
WHERE CAST (part_number AS text) LIKE '3%'; -- using CAST may be better as it conforms to SQL standard
WHERE SUBSTR (part_number::text, 1, 1) = '3';
WHERE part_number || '' LIKE '3%';
*/