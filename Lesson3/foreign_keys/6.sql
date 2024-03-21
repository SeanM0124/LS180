--Write a SQL statement that will prevent NULL values from being stored in orders.product_id. 
ALTER TABLE orders ALTER COLUMN product_id SET NOT NULL;

--What happens if you execute that statement?
--An error occurs, since we have already put in a null value
