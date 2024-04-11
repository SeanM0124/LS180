/*
We've realized that the last two parts we're using for device number 2, "Gyroscope", actually belong to an "Accelerometer".
Write an SQL statement that will associate the last two parts from our parts table with an "Accelerometer" instead of a "Gyroscope".
*/

UPDATE parts SET device_id = 1
WHERE part_number IN (
SELECT part_number
FROM parts
WHERE device_id = 2
ORDER BY part_number DESC
LIMIT 2
);

--Further Exploration
/*
What if we wanted to set the part with the smallest part_number to be associated with "Gyroscope"?
How would we go about doing that?
*/
UPDATE parts
SET device_id = 1
WHERE part_number IN (
  SELECT part_number
  FROM parts
  ORDER BY part_number
  LIMIT 1
);
