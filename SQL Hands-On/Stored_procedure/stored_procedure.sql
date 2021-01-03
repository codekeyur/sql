-- Output Parameteres in Stored Procedure
-- User or Session Variables, USed to call the stored procedure to the get value that has OUT parameters.
-- SET @invoices_count = 0

-- Local Variables Defined in stores Procedure or Functions in SQL
CREATE PROCEDURE `out_parameter_stored_procedure` ()
BEGIN
DECLARE risk_factor DECIMAL (9,2) DEFAULT 0;  -- local variable
DECLARE invoices_total DECIMAL (9,2);         -- local variable
DECLARE invoices_count INT;                   -- local variable

SELECT COUNT(*),
       SUM(invoice_total)
INTO invoices_count,
     invoices_total
FROM invoices i ;
SET risk_factor = invoices_total / invoices_count * 5;
SELECT risk_factor;
END