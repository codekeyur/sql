-- Using ALL keyword retrieve invoices that is greater than all invoices for client 3.

/* 
USE sql_invoicing;
SELECT * FROM invoices 
WHERE invoice_total > ALL (
          SELECT  invoice_total FROM invoices
          WHERE client_id = 3
          )
*/

-- Clients with at least two invoices 
-- Using ANY keyword which is excatly function as IN operator.

USE sql_invoicing;
SELECT * 
FROM clients
WHERE client_id = ANY(
     SELECT client_id
     FROM invoices
     GROUP BY client_id
     HAVING COUNT(*) >= 2
     )
          
