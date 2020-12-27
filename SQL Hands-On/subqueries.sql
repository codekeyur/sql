-- Retrieve data of employees whose earn more than average 
USE sql_hr;
SELECT * 
FROM employees 
WHERE salary > ( SELECT 
				 AVG(salary) 
		         FROM employees
		         )
