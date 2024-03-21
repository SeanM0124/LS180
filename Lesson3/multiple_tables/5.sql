--Write a query that returns the name of each event and how many tickets were sold for it,
--in order from most popular to least popular.

SELECT e.name, count(t.id) AS popularity
 FROM events AS e
 LEFT OUTER JOIN tickets AS t
 ON t.event_id = e.id
 GROUP BY e.id
 ORDER BY popularity DESC;