USE sql_invoicing;
SELECT
      pm.name,
      SUM(p.amount)
FROM payments p
JOIN  payment_methods pm
ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP

