-- rule: check for Null order_date values
-- purpose: ensure all order have valid order_date


SELECT
    COUNT(*) as null_order_date_count
FROM orders
WHERE order_date IS NULL;