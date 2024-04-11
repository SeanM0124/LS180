/*
In the previous exercise, we had to use a GROUP BY clause to obtain the expected output.
In that exercise, we used an SQL query like:

Now, we want to work with the same query, but we want to guarantee that the devices and the count
of their parts are listed in descending alphabetical order. Alter the SQL query above so that we get a
result table that looks like the following.
*/

SELECT devices.name, count(parts.device_id) FROM devices
INNER JOIN parts ON devices.id = parts.device_id GROUP BY devices.name ORDER BY count(parts.device_id) DESC;
