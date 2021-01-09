
-- SERIALIZABLE isolation level

-- Transacition A 

USE sql_store;
SET TRANSACTION ISOLATION LEVEL serializable;
START TRANSACTION;
SELECT * FROM customers WHERE state = 'VA';
COMMIT;

-- Transaction B 

USE sql_store;
START TRANSACTION;
UPDATE customers
SET state = 'VA'
WHERE customer_id = 3;
COMMIT;