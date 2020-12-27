USE sql_invoicing;
SELECT payment_id, c.name AS client_name, c.state,amount,date,pm.name AS payment_type FROM payments p
JOIN clients c
     ON p.client_id = c.client_id
JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id