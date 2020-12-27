-- Products that have never been ordered
/*
USE sql_store;
SELECT * FROM products
WHERE product_id NOT IN ( SELECT DISTINCT product_id FROM sql_store.order_items)
*/

-- Clients Without Invoices
USE sql_invoicing;
SELECT * FROM clients
WHERE client_id NOT IN (SELECT DISTINCT client_id FROM sql_invoicing.invoices)
       