Data Engineering Home Assignment
This project demonstrates data engineering concepts by loading, transforming, and analyzing sales data using Snowflake and dbt. The task involves answering specific business questions using SQL queries after transforming raw sales and customer data.

Prerequisites
Before you begin, ensure you have the following tools installed:

Snowflake (set up a free account if necessary)

dbt (Data Build Tool)

Setup Instructions

1. Snowflake Configuration

a. Create a Snowflake Database
Create a Snowflake database called home_assignment.

b. Configure Snowflake Access in dbt
Create a profiles.yml file in your dbt folder with the following structure:
project:
  outputs:
    dev:
      account: nuzxewk-jc94366
      database: HOME_ASSIGNMENT
      password: Ismail@123
      role: ACCOUNTADMIN
      schema: PUBLIC
      threads: 4
      type: snowflake
      user: ISMAIL123
      warehouse: COMPUTE_WH
  target: dev

2. dbt Project Setup

a. Clone the Project

git clone https://github.com/ismail080/Data-Engineering-Home-Assignment.git
cd Data-Engineering-Home-Assignment

b. Install dbt Dependencies
Run the following command to install dbt dependencies:
dbt deps

c. Test the dbt-Snowflake Connection
Run this command to ensure dbt can connect to your Snowflake instance:

dbt debug

3. Data Ingestion

a. Seed Data
Use dbt to load the provided raw CSV files (sales.csv and customers.csv) into Snowflake:
dbt seed

This will create two tables in Snowflake:
RAW_SALES_DATA
RAW_CUSTOMER_DATA

4. Data Transformation
a. Run the dbt Transformation
Execute the following command to create the TRANSFORMED_SALES_DATA table, which includes the following transformations:

Parse the ORDER_DATE field to extract year, month, and day.
Calculate the total sales amount for each order (QUANTITY * PRICE).

dbt run

5. SQL Queries

Queries to answer specific business questions are stored in the queries/ folder. You can run these queries in Snowflake to get the desired insights:

1.Top 5 Products by Total Sales in 2023: Run queries/Question1.sql
2.Top 5 Customers by Total Sales in 2023: Run queries/Question2.sql
3.Average Order Value for Each Month in 2023: Run queries/Question3.sql
4.Customer with Highest Order Volume in October 2023: Run queries/Question4.sql

Project Structure
1. models/: Contains the SQL logic for data transformations.
2. seeds/: Raw data in CSV format for loading into Snowflake.
3. queries/: SQL queries to answer specific business questions.
4. DECISIONS.md: Documents the decisions, setup, and transformations used during the project.

How to Run the Project
Clone the project.
Configure Snowflake connection in profiles.yml.
Load raw data using dbt seed.
Run transformations using dbt run.
Execute SQL queries in the queries/ folder to answer the business questions.


Author
Ismail

For any issues or questions, feel free to reach out!

