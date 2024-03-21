--Write a query to print out a report of all tickets purchased by the customer with the email address 'gennaro.rath@mcdermott.co'.
--The report should include the event name and starts_at and the seat's section name, row, and seat number.

SELECT events.name AS event,
       events.starts_at,
       sections.name AS section,
       seats.row,
       seats.number AS seat
  FROM tickets
  INNER JOIN events
    ON tickets.event_id = events.id
  INNER JOIN customers
    ON tickets.customer_id = customers.id
  WHERE customers.email = 'gennaro.rath@mcdermott.co';