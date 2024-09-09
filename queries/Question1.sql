-- Select the product ID and calculate the total sales amount for each product
-- The total sales amount is calculated by multiplying the price with the quantity

SELECT 
   PRODUCT_ID,  -- Select the product ID
   SUM(PRICE * QUANTITY) AS total_sales_amount  -- Calculate the total sales amount for each product
FROM 
    RAW_SALES_DATA  -- Source data: raw sales data table
GROUP BY 
    PRODUCT_ID  -- Group the results by product ID to calculate total sales for each product
ORDER BY 
    total_sales_amount DESC  -- Order the results by total sales amount in descending order (highest sales first)
LIMIT 5;  -- Limit the result to the top 5 products with the highest sales
