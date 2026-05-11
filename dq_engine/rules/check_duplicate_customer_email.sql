-- rule: check for dupliacte customer_email values
-- purpose: ensure customer_email is unique for each customer


SELECT
    customer_email,
    COUNT(*) as dupliacte_email
FROM customers
GROUP BY customer_email
HAVING COUNT(*) > 1;