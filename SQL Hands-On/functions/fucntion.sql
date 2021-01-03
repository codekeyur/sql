-- Written this Function to calculate the risk factor per client_id

CREATE DEFINER=`root`@`localhost` FUNCTION `get_risk_fctor_per_client`(
 client_id INT
) RETURNS int

    -- Atributes
    READS SQL DATA -- Use When a Fuction has SELECT Statement.
    -- MODIFIES SQL DATA -- When Fuction has INSERT, DELETE, UPDATE 
    -- DETERMINISTIC will return the same output as per given input.
BEGIN
  DECLARE risk_factor DECIMAL (9,2) DEFAULT 0;  -- local variable
  DECLARE invoices_total DECIMAL (9,2);         -- local variable
  DECLARE invoices_count INT;                   -- local variable
  SELECT COUNT(*),
       SUM(invoice_total)
  INTO invoices_count,
     invoices_total
  FROM invoices i 
  WHERE i.client_id = client_id;
  SET risk_factor = invoices_total / invoices_count * 5;
  RETURN IFNULL(risk_factor,0);
END