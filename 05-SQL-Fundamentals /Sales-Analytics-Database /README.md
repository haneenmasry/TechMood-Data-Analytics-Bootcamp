# Lesson 05: Sales Analytics Database - SQL Fundamentals

## 📊 1. Database Overview & Architecture
This project focuses on designing and deploying a scalable relational database named **`SalesAnalyticsDB`** using Microsoft SQL Server (SSMS). The schema is architected using a **Star Schema** approach tailored for Business Intelligence (BI) tools. It isolates heavy transactional movements (**Fact Table**) from operational master entities (**Dimension Tables**).

### 🛠️ Entity-Relationship Schema Details:
1. **`Customers` Table (Dimension)**: Tracks master customer attributes including primary biological markers (Gender, Age) and geographical identifiers (City, Country).
2. **`Products` Table (Dimension)**: Contains inventory master items classified by logical categories, capturing structural unit pricing and cost parameters.
3. **`Sales` Table (Fact)**: The core transaction ledger tracking historical retail records, purchasing velocities, and live financial metrics.

---

## ⚙️ 2. Referential Integrity & Relational Rules
To preserve strict system constraints and data quality across the application, the database enforces several rules:
- **Primary Keys (PK)**: Secured unique non-duplicate markers via systemic identity intervals on `CustomerID`, `ProductID`, and `SaleID`.
- **Foreign Keys (FK)**: Enforced strict cascading integrity boundaries linking `Sales(CustomerID) -> Customers(CustomerID)` and `Sales(ProductID) -> Products(ProductID)`. This structural dependency guarantees that no order can ever be written for an unregistered or non-existent profile.
- **Computed Column Evaluation**: Implemented a computed evaluation matrix for the `TotalAmount` column `AS (Quantity * UnitPrice) PERSISTED`. This shifts the mathematical evaluation load directly to the disk write tier, optimizing future analytic query execution windows.

---

## 🧠 3. Case Study: Cross-Table Data Unification
### 📋 The Business Problem
An enterprise stores business data across separate isolated tables for customers, inventory, and retail rows. Senior management requires a consolidated transactional report containing unified entities (Customer Names, Product Names, Sold Quantities, and Exact Sales Values) without generating duplicated database footprints.

### 🛠️ The Architectural Solution
By applying structural **`INNER JOIN`** filters across the tables' defined foreign key checkpoints, we bypass data barriers to deliver a unified view:

```sql
SELECT 
    C.FirstName + ' ' + C.LastName AS [Customer Name],
    P.ProductName AS [Product Name],
    S.Quantity AS [Quantity],
    S.TotalAmount AS [Sales Value]
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
INNER JOIN Products P ON S.ProductID = P.ProductID
ORDER BY S.SaleDate DESC;
```

---

## 🔥 4. Advanced Challenge: Multi-Dimensional Aggregation
### 🎯 The Objective
Develop an optimized T-SQL query that combines multi-table rows (`INNER JOIN`) and groups the results by unique profiles to display aggregated metrics: Custom Name, Product Name, **Total Consolidated Quantities**, and **Total Cumulative Financial Sales Value**.

### 🛠️ The Solution (Grouping Safely by Expressions)
To prevent runtime overlapping of matching client names, data rows are grouped using explicit column checkpoints alongside mathematical functions (`SUM` and `COUNT`):

```sql
SELECT 
    C.FirstName + ' ' + C.LastName AS [Customer Name],
    P.ProductName AS [Product Name],
    SUM(S.Quantity) AS [Total Quantity],
    SUM(S.TotalAmount) AS [Sales Value]
FROM Sales S
INNER JOIN Customers C ON S.CustomerID = C.CustomerID
INNER JOIN Products P ON S.ProductID = P.ProductID
GROUP BY C.FirstName, C.LastName, P.ProductName
ORDER BY [Sales Value] DESC;
```

---

## 💻 5. Analytic Query Implementations
The repository includes scripts showcasing data-filtering workflows using core T-SQL predicates (`WHERE`, `IN`, `AND`, `OR`, `ORDER BY`). These retrieve isolated high-value sales summaries and regional performance snapshots from the data tier.

---

## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)
