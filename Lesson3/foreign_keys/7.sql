--Make any changes needed to avoid the error message encountered in #6.
DELETE FROM orders WHERE product_id IS NULL;