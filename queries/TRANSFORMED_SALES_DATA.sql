-- Select the top 5 customers based on total sales amount

SELECT 
    c.name AS customer_name,  -- Select the customer name from the RAW_CUSTOMER_DATA table
    SUM(s.price * s.quantity) AS total_sales_amount  -- Calculate the total sales amount (price * quantity) for each customer
FROM 
    RAW_SALES_DATA s  -- Source data: raw sales data (alias as 's')
JOIN 
    RAW_CUSTOMER_DATA c ON s.customer_id = c.id  -- Join the sales data with customer data using customer ID
GROUP BY 
    c.name  -- Group the results by customer name to calculate the total sales for each customer
ORDER BY 
    total_sales_amount DESC  -- Order the results by total sales amount in descending order (highest sales first)
LIMIT 5;  -- Limit the result to the top 5 customers with the highest sales
