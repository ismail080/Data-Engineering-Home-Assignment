-- Select the customer name and calculate the total order volume for each customer in October 2023

SELECT 
    c.name AS customer_name,  -- Select the customer name from the RAW_CUSTOMER_DATA table
    SUM(s.quantity) AS total_order_volume  -- Calculate the total order volume (sum of quantities) for each customer
FROM 
    HOME_ASSIGNMENT.PUBLIC.RAW_SALES_DATA s  -- Source data: raw sales data (alias 's')
JOIN 
    HOME_ASSIGNMENT.PUBLIC.RAW_CUSTOMER_DATA c ON s.customer_id = c.id  -- Join sales data with customer data using customer ID
WHERE 
    EXTRACT(MONTH FROM TO_DATE(s.ORDER_DATE, 'MM/DD/YYYY')) = 10  -- Filter for orders placed in October (month 10)
GROUP BY 
    c.name  -- Group by customer name to calculate total order volume for each customer
ORDER BY 
    total_order_volume DESC  -- Order the results by total order volume in descending order (highest volume first)
LIMIT 1;  -- Limit the result to the customer with the highest order volume in October
