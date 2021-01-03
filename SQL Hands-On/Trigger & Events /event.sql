-- Events are block SQL code that get executed once or on scheduled time.
-- To show events --> SHOW EVENTS;
-- To alter events --> ALTER EVENT event_name DISABLE/ENABLE
DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
   -- AT '2020-05-01'
   -- EVERY 1 HOUR
   -- EVERY 1 YEAR
   -- EVERY 2 DAYS 
   EVERY 1 YEAR STARTS '2020-01-01' ENDS '2030-01-01' -- STARTS & ENDS are optional
   DO BEGIN
   -- main body/ SQL code
     DELETE FROM payments_audit -- table_name
     WHERE action_date < NOW() - INTERVAL 1 YEAR ;
   END $$
   
   DELIMITER ;
   