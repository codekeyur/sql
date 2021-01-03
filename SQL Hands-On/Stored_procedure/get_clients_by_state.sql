CREATE DEFINER=`root`@`localhost` PROCEDURE `get_client_by_state`(state CHAR(2) )
BEGIN 
   IF state IS NULL THEN
      SELECT * FROM clients;
  ELSE   
      SELECT * FROM clients c
      WHERE c.state = state;
  END IF ;
END