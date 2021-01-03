DELIMITER $$
CREATE PROCEDURE get_client_with_invoice(client_id INT)
BEGIN 
  SELECT *
  FROM 
  invoices i
  JOIN clients c USING (client_id)
  WHERE i.client_id = client_id ;
END $$
DELIMITER ;
