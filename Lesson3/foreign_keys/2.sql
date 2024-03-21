--Update the orders table so that referential integrity will be preserved for the data between orders and products.

ALTER TABLE orders ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES products(id);