SELECT 
 MAX(invoice_total) AS highest,
 -- MIN(invoice_total AS lowest,
 AVG(invoice_total) AS average,
 SUM(invoice_total) AS total_sale,
 COUNT(DISTINCT client_id) AS total_record
FROM invoices