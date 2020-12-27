
-- Clients that has invoices.
/*
SELECT *
FROM clients c
WHERE EXISTS (
     SELECT * 
     FROM invoices
     WHERE client_id = c.client_id
     )
*/

-- Products that have never been ordered
USE sql_store;
SELECT *
FROM products p
WHERE NOT EXISTS (
     SELECT product_id
     FROM order_items
     WHERE product_id = p.product_id
	)