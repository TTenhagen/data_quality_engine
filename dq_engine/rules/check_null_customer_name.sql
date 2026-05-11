-- rule: check for Null customer_name values
-- purpose: ensure customer_name is alqays populated for analytics


SELECT
    COUNT(*) as null_customer_name_count,
    COUNT(*)*1.0/(SELECT COUNT(*) FROM customers) as null_customer_name_percentage
FROM customers
WHERE customer_name IS NULL;