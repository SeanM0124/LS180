--Write a query that determines what percentage of the customers in the database have purchased a
--ticket to one or more of the events.

SELECT round(COUNT(DISTINCT tickets.customer_id) / COUNT(DISTINCT customers.id)::decimal * 100, 2) AS PERCENT
FROM customers
LEFT OUTER JOIN tickets
ON tickets.customer_id = customers.id;