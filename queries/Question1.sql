SELECT 
   PRODUCT_ID,
   SUM(PRICE * QUANTITY) AS total_sales_amount
FROM 
    RAW_SALES_DATA
GROUP BY 
    PRODUCT_ID
ORDER BY 
    total_sales_amount DESC
LIMIT 5