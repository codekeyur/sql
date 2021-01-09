-- Deadlocks
-- Happens when both transcation can not commit as their logs are depends on each other.
-- here Transaction A and B are waiting for each other to commit and thats never going to happen and we got error 1213.
-- Error Code: 1213. Deadlock found when trying to get lock; try restarting transaction

-- Transacton A 
USE sql_store;
START TRANSACTION;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
UPDATE orders SET status = 1 WHERE order_id = 1;
COMMIT;

-- Transaction B
USE sql_store;
START TRANSACTION;
UPDATE orders SET status = 1 WHERE order_id = 1;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
COMMIT;

