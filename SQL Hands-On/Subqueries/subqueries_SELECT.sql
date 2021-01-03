-- Retrieve All the client's difference between avg invoices for each client and avg of all invoices
-- Implement sybqueries in SELECT clause.

USE sql_invoicing;
SELECT 
 client_id,
 c.name,
 SUM(invoice_total) AS total_sales,
 (SELECT AVG(invoice_total) AS average
  FROM invoices) AS average,
 (SUM(invoice_total) - (SELECT average)) AS difference    
FROM invoices i
RIGHT JOIN clients c USING (client_id)
GROUP BY client_id,
         c.name

-- Implement subqueries in FROM clause
/*

SELECT * 
FROM (
	SELECT
	    client_id,
	    c.name,
	    SUM(invoice_total) AS total_sales,
	    (SELECT AVG(invoice_total) AS average FROM invoices) AS average,
        (SUM(invoice_total) - (SELECT average)) AS difference    
	FROM invoices i
    RIGHT JOIN clients c USING (client_id)
    GROUP BY client_id,
             c.name
	) AS sale_summary
WHERE total_sales IS NOT NULL

*/