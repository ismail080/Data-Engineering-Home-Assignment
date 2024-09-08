This project demonstrates data engineering concepts by loading, transforming, and analyzing sales data using Snowflake and dbt. The task involves answering 
specific business questions using SQL queries after transforming raw sales and customer data.
Prerequisites
Before you begin, ensure you have the following tools installed:

Snowflake (set up a free account if necessary)
dbt (Data Build Tool)
Setup Instructions
1. Snowflake Configuration
Create a Snowflake Database
Create a Snowflake database called home_assignment.

Configure Snowflake Access in dbt
Create a profiles.yml file

2. dbt Project Setup
1. Clone the Project

 Clone this GitHub repository
2. Install dbt Dependencies

 Install the necessary dbt packages:
3. Test the dbt-Snowflake Connection

Data Ingestion
1. Seed Data
Use dbt to load the provided raw CSV files into Snowflake
This will create two tables:

RAW_SALES_DATA
RAW_CUSTOMER_DATA

Data Transformation
1. Transform the Data
Run the dbt transformation to create the TRANSFORMED_SALES_DATA table:

This transformation will:

Parse the ORDER_DATE field to extract year, month, and day.
Calculate the total sales amount for each order (QUANTITY * PRICE).

Queries
1. Answering Business Questions
SQL queries to answer specific business questions are stored in the queries/ folder. You can run these queries in Snowflake to get insights:

Top 5 Products by Total Sales in 2023
Run queries/Question1.sql to find the top 5 products by total sales.

Top 5 Customers by Total Sales in 2023
Run queries/Question2.sql.

Average Order Value for Each Month in 2023
Run queries/Question3.sql.

Customer with Highest Order Volume in October 2023
Run queries/Question4.sql.

Project Files

models/transformed_sales_data.sql: Contains the SQL logic to transform RAW_SALES_DATA into a more structured format.

DECISIONS.md: Documents the decisions, setup, and transformations.

queries/: Contains SQL queries to answer the assignment questions.

How to Run the Project

1. Clone the project.

2. Configure Snowflake connection in profiles.yml.

3. Load raw data using dbt seed.

4. Run transformations using dbt run.

5. Execute the SQL queries in the queries/ folder to answer the business questions.