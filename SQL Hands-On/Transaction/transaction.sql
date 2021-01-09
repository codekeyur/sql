-- Transactions use to make multiple changes in database at same time.
-- It follows the ACID properties i.e Atomicity, Consistency, Isolation and Durability

USE sql_store;
START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2020-01-09', 1);

INSERT INTO order_items
VALUES(LAST_INSERT_ID(), 1,1,1);

-- COMMIT;

ROLLBACK; -- use for manual error checking and want to rollback the transaction so it will undo all the changes
