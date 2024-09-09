-- Select the order month and calculate the average order value for each month

SELECT
    ORDER_MONTH,  -- Select the month when the order was placed
    AVG(TOTAL_SALES_AMOUNT) AS average_order_value  -- Calculate the average total sales amount for each month
FROM 
    HOME_ASSIGNMENT.PUBLIC.TRANSFORMED_SALES_DATA  -- Source data: transformed sales data table
GROUP BY 
    ORDER_MONTH  -- Group the results by order month to calculate the average order value per month
ORDER BY 
    ORDER_MONTH;  -- Order the results by month to display them in chronological order
