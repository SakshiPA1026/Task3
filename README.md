ClassicModels SQL Analysis Project

This project demonstrates SQL querying and analysis using the `classicmodels` sample database. It includes practical examples of data retrieval, aggregation, subqueries, joins, views, and indexing for performance optimization.


# Tools Used
- MySQL / SQLite
- ClassicModels Sample Database
- SQL Queries for Data Analysis

---
# Dataset Overview
The `classicmodels` database contains:
- **Customers** and their contact details
- **Orders** and order details
- **Employees** and office locations
- **Products** sold and their inventory
- **Payments** made by customers

✅ SQL Task Descriptions
1.Basic SQL Clauses
Used SELECT, WHERE, GROUP BY, HAVING, ORDER BY, and LIMIT to filter, group, and sort customer payment data.
Analyzed total payments per country and filtered to show only high-value segments.

2.Joins
Applied different types of SQL joins:
INNER JOIN to get customers with orders.
LEFT JOIN to show all customers, even those with no orders.
RIGHT JOIN to list all orders, including those with missing customer data (theoretically).

3.Subqueries
Used subqueries in:
WHERE clause to find customers with more than five orders.
SELECT clause to calculate total payments per customer.
FROM clause to create derived tables for grouped filtering.

4.Aggregate Functions
Used SUM(), AVG():

5.Views for Analysis
Created reusable views to simplify data analysis

5.Query Optimization
Improved query performance by adding indexes:
On commonly joined or filtered columns like customerNumber, orderDate, and productName.
On multi-column filters such as country and city.

6.Indexes Created:
-Customer Number (customers, orders, payments)
Used in frequent joins and WHERE clauses to relate customers with orders and payments.
-Order Date (orders)
Helpful in filtering and sorting orders based on date ranges.
-Product Name (products)
Optimizes search functionality, especially when using LIKE queries.
-Country & City (customers)
A composite index created to speed up queries that filter customers by location.
