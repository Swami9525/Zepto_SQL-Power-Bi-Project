🛒 Zepto Inventory & Pricing Analysis

📌 Overview
This project analyzes Zepto's product inventory, pricing, discounts, and stock availability using SQL and Power BI.
The objective is to transform raw product data into meaningful business insights using SQL queries and an interactive Power BI dashboard.

Project objectives:
Analyze product pricing and discount strategies.
Identify in-stock and out-of-stock products.
Compare discounts across product categories.
Evaluate inventory distribution and product availability.
Build an interactive dashboard to support data-driven decisions.

📂 Dataset
Source: Zepto Inventory Dataset — Kaggl
The dataset contains product-level information related to pricing, discounts, categories, and stock availability.

Key columns may include:

Column                    Description
sku_id                  Product identifier
name                    Product name
category                Product category
mrp                     Maximum Retail Price
discountPercent         Discount percentage
discountedSellingPrice  Discounted selling price
availableQuantity       Available inventory quantity
weightInGms             Product weight in grams
outOfStock               Stock availability status

🛠️ Tools & Technologies
SQL: Data exploration, cleaning, aggregation, and business analysis.
PostgreSQL / MySQL / SQL Server: Relational database for querying the dataset. (Specify the database actually used.)
Power BI: Interactive dashboard creation and visualization.
GitHub: Project documentation and portfolio presentatio

🔄 Project Workflow

1. Data Loading
Download the dataset from Kaggle.
Import the CSV file into the selected SQL database.
Inspect the table structure and data types.

2. Data Cleaning Using SQL
Identify and handle missing values.
Check for duplicate records.
Validate prices, discounts, and stock quantities.
Standardize data where required.
Check for invalid or inconsistent values.

3. SQL Data Analysis
Write SQL queries to answer important business questions using filtering, aggregation, GROUP BY,
HAVING, joins where applicable, and window functions.

Business question:
-- Q1 Find the top 10 best-value products based on the discount percentage.
-- Q2.What are the Products with High MRP but Out of Stock
-- Q3.Calculate Estimated Revenue for each category
--Q4.Find all products where MRP is greater than ₹500 and discount is less than 10%.
-- Q5.Identify the top 5 categories offering the highest average discount percentage.
--Q6.Find the price per gram for products above 100g and sort by best value.
--Q7.Group the products into categories like Low, Medium, Bulk.
-- Q8.What is the Total Inventory Weight Per Category

4. Power BI Dashboard
Connect Power BI to the SQL database or imported dataset.
Create relevant KPIs and measures.
Build charts and tables for pricing, discounts, and inventory.
Add slicers and filters for interactive analysis.
Present key findings in a clear and business-friendly format.

📊 Dashboard
The Power BI dashboard focuses on the following areas:
Product Overview: Total products and category distribution.
Pricing Analysis: Comparison of MRP and discounted selling price.
Discount Analysis: Average discount percentages and highly discounted products.
Inventory Analysis: In-stock and out-of-stock products.
Category Analysis: Comparison of pricing and inventory across product categories.
Dashboard Preview: Add a screenshot of your completed dashboard here.
Power BI File: Add your .pbix file or published dashboard link when available.

📈 Results & Business Insights
The project aims to identify pricing patterns, discount opportunities, and inventory availability issues.
The final analysis will highlight:
Product categories with higher average discounts.
Products with significant price differences between MRP and selling price.
Categories with comparatively high inventory levels.
Products that may require stock replenishment.
Potential value-for-money products based on price per gram.
Add actual numerical findings after completing and validating your SQL analysis and Power BI dashboard.

▶️ How to Run
Step 1: Download the Dataset
Download the CSV file from the Kaggle Zepto dataset.

Step 2: Import Data into SQL
Create a database in PostgreSQL, MySQL, or SQL Server.
Create a table with appropriate column names and data types.
Import the CSV dataset into the table.

Step 3: Run SQL Queries
Execute the data-quality and cleaning queries.
Run the analysis queries.
Validate the results before using them in the dashboard.

Step 4: Open Power BI
Open Power BI Desktop.
Connect to the SQL database or import the prepared dataset.
Create the dashboard and configure the required visuals and filters.
Refresh the data when necessary.

Step 5: Review the Report and Presentation
Review the project report and Gamma presentation to understand the analysis, findings, and recommendations.

📁 Suggested Project Structure
Zepto-Inventory-Analysis/
│
├── sql/
│   ├── data_cleaning.sql
│   └── zepto_analysis.sql
├── powerbi/
│   └── zepto_dashboard.pbix
├── dashboard/
│   └── dashboard_screenshot.png
├── reports/
│   └── zepto_analysis_report.pdf
├── presentation/
│   └── zepto_project_presentation.pdf
└── README.md

🎯 Key Skills Demonstrated
SQL | Data Cleaning | Data Analysis | Business Querying | Aggregations | Joins | Window Functions | Power BI | Data Visualization | Business Reporting

👤 Author
Sairaj Ramesh Waje
Aspiring Data Analyst
GitHub: https://github.com/Swami9525
LinkedIn: https://www.linkedin.com/in/sairaj-waje-179019446/?isSelfProfile=true

   

