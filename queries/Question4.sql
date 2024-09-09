SELECT 
    c.name AS customer_name, 
    SUM(s.quantity) AS total_order_volume
FROM 
    HOME_ASSIGNMENT.PUBLIC.RAW_SALES_DATA s
JOIN 
    HOME_ASSIGNMENT.PUBLIC.RAW_CUSTOMER_DATA c ON s.customer_id = c.id
WHERE 
    EXTRACT(MONTH FROM TO_DATE(s.ORDER_DATE, 'MM/DD/YYYY')) = 10  
GROUP BY 
    c.name
ORDER BY 
    total_order_volume DESC
LIMIT 1;
