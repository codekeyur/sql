/* Case that describe Dirty reads error where the Isolation level is READ UNCOMMITED.
   
   Situation : Two transactions runs at same time. Transaction A & B. 
   Tasks     : Transcation A will queries the current points for the cusomter_id = 1.
			   Transaction B will add 20 points for customer_id = 1
   Actions.  : Transaction A only returns the uncommited data. Even the Transaction B get executed.
   Results.  : This will results the Dirty Reads error in Transaction A where it should return the 2293 points instead of 20.

*/
Transaction A : 

USE sql_store;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT points
FROM customers
WHERE customer_id = 1


Transaction B :

USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 20
WHERE customer_id = 1;
ROLLBACK;