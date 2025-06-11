# Task 6: Sales Trend Analysis Using Aggregations

## Overview
Focused on analyzing monthly revenue and order volume trends using SQL aggregations on an online sales dataset. The analysis was performed using MySQL on a synthetic dataset.

## Objective
- Analyze monthly revenue (`SUM(amount)`) and order volume (`COUNT(DISTINCT order_id)`).
- Group data by year and month using `YEAR()` and `MONTH()`.
- Sort results chronologically and limit to a specific time period (2023-2024).

## Files
- `Task6_Database_Setup.sql`: SQL script to create the database and populate the `orders` table with synthetic data.
- `Task6_Sales_Trends.sql`: SQL script containing the query for sales trend analysis. Updated to fix a `ONLY_FULL_GROUP_BY` error by adding the `CONCAT` expression to the `GROUP BY` clause.
- `Sales_Trends_Output.png`: Output of the sales trend analysis query.

## Key Insights
- **Monthly Revenue Trends**: Revenue peaked in November 2023 ($1050.00), May 2024 ($1050.00), and October 2024 ($1050.00), possibly due to seasonal sales (e.g., holiday shopping in November).
- **Order Volume**: The order volume remained constant at 2 orders per month, as the synthetic dataset was designed with exactly 2 orders per month.
- **Seasonal Patterns**: Higher revenues were observed towards the end of each year (e.g., November and December), indicating potential seasonal trends in online sales.

## How to Run
1. Install MySQL and MySQL Workbench.
2. Run the `Task6_Database_Setup.sql` script to create the database and populate the `orders` table.
3. Open and execute the query in `Task6_Sales_Trends.sql` to reproduce the analysis.
4. View the output screenshot in `Sales_Trends_Output.png`.

## Tools Used
- MySQL for querying and analysis.
- Dataset: Synthetic `online_sales` dataset (created due to unavailability of a suitable dataset).

## Date and Time of Submission
- Updated on: 05:30 AM IST, Wednesday, June 12, 2025.
