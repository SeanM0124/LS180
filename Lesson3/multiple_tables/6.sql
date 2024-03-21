--Write a query that returns the user id, email address, and number of events for all customers
--that have purchased tickets to three events.

SELECT c.id, c.email, COUNT(DISTINCT t.event_id)
FROM customers AS c
INNER JOIN tickets AS t
ON t.customer_id = c.id
GROUP BY c.id
HAVING COUNT(DISTINCT t.event_id) = 3;