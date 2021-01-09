/* Case that describe Repeatable reads error where the Isolation level is READ COMMITED.
   
   Situation : Two transactions runs at same time. Transaction A & B. 
   Tasks     : Transcation A will queries the current points for the cusomter_id = 1.
			   Transaction B will be executed twice , first_time it will set ponts = 20 for customer_id = 1 and second time it will set 30.
   Actions.  : Transaction A only returns the both commited data with inconsistence reads.
   Results.  : This will results the Non Repeatable/inconsistence read error in Transaction A where it return commited value after each Select Statements.

*/

Transaction A : 

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
START TRANSACTION;
SELECT points FROM customers WHERE customer_id = 1;
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;

Transaction B :

USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 20
WHERE customer_id = 1;
ROLLBACK;