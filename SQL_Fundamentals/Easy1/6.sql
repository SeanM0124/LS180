/*
It seems there was a mistake when we were inserting data in the birds table. All the crows are actually ravens. Update the birds table so that the rows with a species of 'Crow' now read 'Raven'.
*/

Update birds SET species = 'Raven'
WHERE species = 'Crow';

--Futher Explo
UPDATE birds SET species = 'Hawk'
       WHERE name = 'Jamie';