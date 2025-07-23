# North-Wind-Sales-Analytics
Data Analysis Project: Northwind Traders Sales & Operations
This project involves an in-depth analysis of the Northwind Traders dataset, focusing on various aspects of their sales, customer, product, employee, and supplier operations. The analysis leverages SQL for data extraction and transformation, and conceptually uses Power BI for visualization and dashboarding to derive actionable business insights.

## 🚀 Project Goal
The primary goal of this project is to uncover key trends, patterns, and correlations within the Northwind Traders dataset to provide actionable insights that can drive business improvements in sales, customer management, inventory, and supply chain efficiency.

## 📁 Dataset Overview
The analysis is based on a set of interconnected CSV files representing different entities of the Northwind Traders business. Each file acts as a table in a relational database schema:

categories.csv: Product categories.

customers.csv: Customer information.

employees.csv: Employee details.

order details.csv: Line items for each order.

orders.csv: Order header information.

products.csv: Product details, including pricing and stock.

shippers.csv: Shipping company details.

suppliers.csv: Supplier information.

MECE Breakdown of Data Domains
The dataset can be logically broken down into mutually exclusive and collectively exhaustive domains:

Customer Management: customers.csv

Product and Inventory Management: products.csv, categories.csv, suppliers.csv

Order Processing and Fulfillment: orders.csv, order details.csv, shippers.csv

Human Resources / Employee Management: employees.csv

## 🛠️ Tools & Technologies
SQL (MySQL/SQLite Compatible): Used for data extraction, transformation, aggregation, and initial analysis.

Power BI : Envisioned for creating interactive dashboards, visualizations, and detailed reports based on the prepared data.

## 📊 Data Analysis & Insights
 **1. Sales & Revenue Performance** 
 
SQL Analysis:

Calculated total sales revenue from order details.csv, accounting for unit price, quantity, and discount.

Identified top-contributing product categories and individual products to overall revenue, joining order details.csv, products.csv, and categories.csv.

Explored monthly and seasonal demand trends for products and categories, using OrderDate from orders.csv and Quantity from order details.csv.

Power BI Visualization:

Revenue Dashboards: Interactive charts showing total revenue over time (monthly/quarterly), revenue by product category, and top N products by sales.

Sales Trend Lines: Visualizing seasonal demand shifts for various product categories.

Anomaly Detection: Implementing visual cues or simple statistical thresholds to highlight unusual spikes or drops in product sales/revenue.

**2. Customer Behavior & Segmentation**

SQL Analysis:

Calculated total spend and order count for each customer, joining orders.csv and order details.csv.

Identified customer order patterns by city and country, aggregating order metrics (TotalOrders, TotalRevenue, AverageOrderItemValue) by geographic location.

Determined the frequency of orders per customer, calculating total orders or average days between orders.

Power BI Visualization:

Customer Demographics Map: Visualizing customer distribution and sales contribution by geographic region.

Customer Lifetime Value (CLV) Segments: Creating segments (e.g., high-value, frequent, new) based on spend and order frequency, showing their respective contributions.

Preferred Category Analysis: Dashboards showing customers' most purchased product categories.

**3. Employee Distribution & Trends**

SQL Analysis:

Analyzed the geographic and title-wise distribution of employees, counting employees by City, Country, and Title from employees.csv.

Observed trends in hire dates across employee titles, calculating EarliestHireDate, LatestHireDate, and AverageHireDate for each Title.

Determined the distribution of employee tenure, calculating TenureInYears for each employee relative to the current date.

Power BI Visualization:

Employee Headcount by Department/Location: Bar charts and maps showing workforce distribution.

Tenure Distribution Histogram: Visualizing the spread of employee service length.

Hiring Trends Over Time: Line charts showing hiring volume or average hire dates for specific roles or the company overall.

**4. Supplier & Product Sourcing Insights**

SQL Analysis:

Examined the regional trends in supplier distribution and pricing, joining suppliers.csv and products.csv to calculate AverageProductUnitPrice by SupplierCountry and City.

Analyzed how suppliers are distributed across different product categories, counting distinct SupplierIDs per CategoryName by joining suppliers.csv, products.csv, and categories.csv.

Power BI Visualization:

Supplier Geographic Map: Visualizing supplier locations and their concentration.

Supplier Pricing by Category & Region: Matrix or bar charts comparing average product prices from different regions for specific categories.

Category Sourcing Breakdown: Charts showing which suppliers contribute to which product categories.

## 🚀 Key Business Improvements
The analysis conducted provides the groundwork for several critical improvements for the company:

Optimized Sales & Marketing: Tailoring campaigns based on customer segments and geographic/category preferences will drive higher engagement and ROI.

Enhanced Supply Chain Efficiency & Resilience: Strategic sourcing based on regional pricing and diversified supplier distribution will mitigate risks and optimize costs.

Streamlined Order Fulfillment: Identifying and resolving bottlenecks in shipping will improve customer satisfaction and operational speed.

Effective Inventory Management: Data-driven insights into product demand and stock levels will minimize waste and ensure product availability.

Proactive Workforce Planning: Understanding employee distribution and tenure trends supports better hiring, training, and retention strategies.

