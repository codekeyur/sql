/* Concurrency and Locking
Concurrency occurs when two or more user trying to modify the same data at same time and by default
SQL lock one transaction until other transaction commit or rollback.

Common Problems in Concurrency
1. Lost Updates
-> Occurs when we do not use lock when trys to update same data at same time. In this case the trancaction that commit later 
   will overwrite the changes made by the previous transactions. 
2. Dirty Reads
-> it happens when transactions read the data that has not been commited. In this case need to use READ COMMITED Isolation.
3. Non-repeating 
-> it occurs when transaction A and B occurs at same time and in A we are reading the same value at two different place where it will read
   an updated value from Transaction B rather than the value that initially used. In this scenario we need to use REPEATABLE READ isolation 
   in Transaction A.
4. Phantom read
-> If we have data that appears after we UPDATE, DELETE or INSERTED the data ,so in this case we need to add that data into transaction 
   so to prevent this we have to use SERIALIZABLE isolation but this isolation can affect the scalability and performance of database so 
   it will only use in most critical scenario.

Note : In SQL the deault isolation is set to REPETABLE READ. To change the isoaltion need to use the following the statement:
       SHOW VARIABLES LIKE 'transaction_ioslation' -- To view the current Isolation 
       SET TRANSCATION ISOLATION LEVEL SERILIZABLE -- This will set next transaction isolation level.
       SET SESSION TRANSACTION ISOLATION LEVEL SERILIZABLE -- This will set all future transaction isolation level on SERILIZABLE
       SET GLOBAL TRANSACTION ISOLATION LEVEL SERILIZABLE  -- This will set isolation level globally

*/

USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = points + 10
WHERE customer_id = 1;
COMMIT;