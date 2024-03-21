--Write a query that determines how many different customers purchased tickets to at least one event.

SELECT count(DISTINCT customer_id) AS count FROM tickets;