
-- Retrieve all the products history during last 3 years
/*
USE sql_store;
SELECT 
      p.name,
      order_id,
      CASE 
          WHEN YEAR(order_date) = YEAR(NOW()) -1 THEN 'Last Year Order'
          WHEN YEAR(order_date) = YEAR(NOW()) - 2 THEN 'Last 2 Year Order'
          WHEN YEAR(order_date) = YEAR(NOW()) - 3 THEN 'Last 3 Year Order'
	    ELSE 'Future'
      END AS order_record
FROM orders o
JOIN order_items oi USING(order_id)
JOIN products p USING(product_id)

*/

-- Retrieve Customer Membership as per their Points

SELECT 
    CONCAT(first_name, ' ', last_name) AS Customer,
    points,
    CASE 
          WHEN points >= 3000 THEN 'Gold'
          WHEN points BETWEEN 2000 AND 3000 THEN 'Silver'
          WHEN points <= 2000 THEN 'Bronze'
	END AS Membership
FROM customers    
ORDER BY points DESC