--Using RIGHT OUTER JOIN, write a query to display a list of all services that are not currently in use.
--Your output should look like this:

SELECT description FROM customers_services
RIGHT OUTER JOIN services
ON services.id = service_id
WHERE service_id IS NULL;