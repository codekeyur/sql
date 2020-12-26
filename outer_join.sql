SELECT o.order_id,
       o.order_date,
	   c.first_name AS customer,
       sh.name AS shipper,
       os.name AS 'Shipment Status'
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
ON o.status = os.order_status_id
-- ORDER BY sh.name