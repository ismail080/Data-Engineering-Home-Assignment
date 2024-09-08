**Project Overview**
In this Project the sales teams wants to know about their top performing products and the customers those are buing them.

**Tools Used**
Snowflake
dbt


## 1. Project Setup 

###1.1. Snowflake Setup
- **Account**: `nuzxewk-jc94366`
- **Database**: `HOME_ASSIGNMENT`
- **Warehouse**: `COMPUTE_WH`
- **Role**: `ACCOUNTADMIN`
- **Schema**: `PUBLIC`
- **Threads**: 4
- **User**: `ISMAIL123`

###1.2. Dbt Setup
- pip install dbt-snowflake:
- dbt init:

## Running the Project

1. **Ingest Data**
   - Run `dbt seed` to load `sales.csv` and `customers.csv` into Snowflake and two tables raw_sales_data and raw_customer_data.
2. **Transform Data**
   - Run `dbt run` to create the `transformed_sales_data` model.

## Data Ingestion

### Process
- Used dbt seed to load `sales.csv` and `customers.csv` into Snowflake.
- Tables created: `raw_sales_data` and `raw_customer_data`.

## Data Transformation

### Model: `transformed_sales_data`

#### Transformations Applied
1. **Date Extraction**
   - Extracted year, month, and day from the `ORDER_DATE` field using `TO_DATE` and `EXTRACT` functions.

2. **Total Sales Amount Calculation**
   - Added a calculated field `TOTAL_SALES_AMOUNT` as `QUANTITY * PRICE`.

### SQL Code
```sql
-- models/transformed_sales_data.sql
### 3. **Queries Folder**

Create separate SQL files for each query addressing the specific questions:

- **Top 5 Products by Total Sales Amount in 2023** 
- **Top 5 Customers by Total Sales Amount in 2023** 
- **Average Order Value for Each Month in 2023** 
- **Customer with Highest Order Volume in October 2023** 

### Final Steps

- **Publish to GitHub**: Push your project to a public repository on GitHub.
- **Share the Link**: Send the repository link to your evaluator.

Feel free to adjust any details or add additional sections as needed! If you have any more questions or need further assistance, let me know.