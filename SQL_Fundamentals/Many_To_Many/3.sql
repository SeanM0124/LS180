--Write a query to retrieve the customer data
--for every customer who does not currently subscribe to any services.

SELECT customers.* FROM customers
LEFT OUTER JOIN customers_services ON customer_id = customers.id
WHERE service_id IS NULL;

--FE:
SELECT c.*, s.* 
  FROM customers c 
  LEFT JOIN customers_services cs 
    ON c.id = cs.customer_id 
  FULL JOIN services s 
    ON cs.service_id = s.id 
 WHERE cs.id IS NULL;