-- Implement ffew functions in MySQL

/* 
USE sql_store;
SELECT 
       order_id,
	   customer_id,
       order_date,
       status,
       IFNULL(comments, 'Not Assigned') AS comments
  FROM sql_store.orders;
*/
/*
SELECT 
     CONCAT(first_name, ' ', last_name) AS customer,
     IFNULL(phone, 'unknown') AS phone
FROM customers
*/

-- IF function in MySQL
-- IF (condition, result if cond TRUE, result if cond FALSE)


USE sql_store;
SELECT product_id,
       name,
       COUNT(*) AS orders,
       IF (COUNT(*) > 1, 'Many Times', 'Once') AS frequency
FROM products 
JOIN order_items USING (product_id)  
GROUP BY product_id,
		 name