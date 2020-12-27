-- Customers who have ordered lettuce using subqueries
/*
USE sql_store;
SELECT 
       DISTINCT customer_id,
       first_name,
       last_name
FROM customers
WHERE customer_id IN (
		SELECT o.customer_id
        FROM order_items oi
        JOIN order_items oi USING (order_id)
        WHERE product_id = 3 
       )
*/

-- Customers who have ordered lettuce using JOIN STATEMENT

USE sql_store;
SELECT DISTINCT c.customer_id,
       c.first_name,
       c.last_name
FROM orders o
JOIN customers c USING (customer_id) 
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3 
ORDER BY customer_id


