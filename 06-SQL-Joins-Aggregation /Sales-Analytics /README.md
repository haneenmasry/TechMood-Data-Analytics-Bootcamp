# Lesson 06: Sales Analytics Database - SQL Joins & Aggregation

## 📊 1. Database Overview & Architecture
This project marks the transition from basic database setup to advanced data unification and analytical query execution using Microsoft SQL Server (SSMS). Building upon the relational architecture of **`SalesAnalyticsDB`**, we focus on leveraging structural relationships to transform raw transaction records into aggregated, highly scannable business intelligence views.

### 🛠️ Core Analytical Operations Covered:
1. **Multi-Table Unification**: Blending records seamlessly via structural `INNER JOIN` conditions across transactional and dimensional boundaries.
2. **Data Gaps Auditing**: Utilizing comprehensive `FULL OUTER JOIN` patterns to screen for operational mismatches or inactive entities.
3. **Dynamic Filtering**: Implementing dynamic expressions and nested `Subqueries` to evaluate performance criteria against computed historical trends.
4. **Data Aggregation Matrix**: Deploying multi-dimensional metrics via `GROUP BY` and mathematical functions (`SUM`, `COUNT`, `AVG`) to generate high-level management reports.

---

## 🧠 2. Case Study: Cross-Table Data Unification & Summarization
### 📋 The Business Problem
An enterprise stores transactional data across separate isolated tables, preventing senior management from identifying overall product performance and purchasing behaviors. They require a centralized, optimized analytical workflow that combines distinct parameters (Category, Product Name, Order Velocity, Total Sales Value, and Average Order Values) into unified management snapshots without manual manipulation.

### 🛠️ The Architectural Solution
By applying structural **`INNER JOIN`** combinations paired with analytical **`GROUP BY`** partitions, the operational barriers are completely bypassed to group raw records into summary arrays:

```sql
SELECT 
    P.Category,
    P.ProductName,
    COUNT(S.SaleID) AS Number_of_Orders,
    SUM(S.TotalAmount) AS Total_Amount,
    AVG(S.TotalAmount) AS AvgOrderValue
FROM Sales S
INNER JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category, P.ProductName
ORDER BY Total_Amount DESC;
```

---

## 🔥 3. Advanced Challenge: Top-Tier Cross-Dimensional Filtering
### 🎯 The Objective
Develop an optimized T-SQL query that isolates the **Top 5 Products** by absolute financial performance, while dynamically joining client metadata and product definitions in a single execution loop without breaking structural granularity.

### 🛠️ The Architectural Solution (Challenge Solved)
The challenge was successfully resolved by applying a strict `TOP 5` filter on the combined rows, matching dimensions dynamically, and explicitly grouping rows across matching structural attributes:

```sql
SELECT TOP 5
    P.Category,
    P.ProductName,
    C.FirstName + ' ' + C.LastName AS Customer_Name,
    SUM(S.TotalAmount) AS Total_Sales_Amount,
    SUM(S.Quantity) AS Total_Qty_Sold
FROM Sales S
INNER JOIN Products P ON S.ProductID = P.ProductID
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY P.Category, P.ProductName, C.FirstName, C.LastName
ORDER BY SUM(S.TotalAmount) DESC;
```
---

## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)


