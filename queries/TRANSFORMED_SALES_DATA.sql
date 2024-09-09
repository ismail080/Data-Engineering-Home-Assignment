SELECT 
    c.name AS customer_name, 
    SUM(s.price * s.quantity) AS total_sales_amount
FROM 
    RAW_SALES_DATA s  
JOIN 
    RAW_CUSTOMER_DATA c ON s.customer_id = c.id  
GROUP BY 
    c.name
ORDER BY 
    total_sales_amount DESC
LIMIT 5;
