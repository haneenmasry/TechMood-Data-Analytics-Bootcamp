# Lesson 07: Data Warehouse Semantic Layers – SQL Queries & Views
**Course Project**: TechMood Data Analytics Bootcamp (Lesson 07)  
**Target Schema**: `WideWorldImportersDW` (OLAP Data Warehouse)  
**Analytics Tier**: Architecture, Fact-Dimension Synthesis, & Abstraction Layers for BI Processing  

---

## 📊 1. Project Overview & Schema Architecture
This project focuses on advanced data engineering, database schema pipelining, and semantic optimization using the production data logs of **Wide World Importers Data Warehouse (`WideWorldImportersDW`)**.

The primary objective is to build clean abstraction layers by deploying structural **SQL Views**. This strategy isolates complex table scanning workloads and handles heavy analytical joins directly at the database engine tier, delivering high-performance, pre-aggregated datasets optimized for direct ingestion inside data rendering tools like **Power BI** or **Excel**.

### 🛠️ Core Database Tasks Implemented:
* **Decoupling Computations**: Delegating raw multidimensional join steps directly to the SQL Server Engine.
* **Semantic Standardization**: Enforcing strict identifier name protocols to map clean business labels.
* **Analytical Aggregations**: Transitioning grain levels from daily transaction logs to structured executive summaries.

---

## 🧠 2. Case Study: Scalable Business Intelligence Data Prep
### 📋 The Business Dilemma
An enterprise managing high-volume relational tables needs automated, live dashboard update schedules. Attempting to execute heavy data transformation loops, multi-table string indexing, and complex cross-schema intersections (`INNER JOIN` operations) across multiple raw dimension tables inside the **Power BI** client file drastically degrades query response times, hits workspace performance limits, and creates calculation inconsistencies among data team members.

### 🛠️ The Architectural Solution
By deploying dedicated, optimized **SQL Views**, we push the severe query computation burden straight to the database server. The data visualization engine no longer scans unindexed transaction intersections dynamically; it securely requests pre-processed metrics via streamlined database views, eliminating query redundancy and minimizing dashboard visual loading times.

### 💡 Case Study Architectural Insights:
1. **Engine Workload Efficiency**: Shifting multi-table calculation workloads to the database server layer prevents performance throttling on the report layer.
2. **Standardization of Logic**: Managing calculations at the database view level ensures a uniform metrics framework across all connected dashboards, eliminating discrepancies between business analysts.
3. **Optimized Network Payloads**: Pre-aggregating data records over the database structure downsizes the raw data volume traveling across network paths to the dashboard layer.

---

## 📝 3. Business Insights & Recommendations

### 💡 5 Core Sales Insights (`v_SalesSummary`)
* **Market Concentration**: Over 60% of total revenue is heavily concentrated within a few major key metropolitan cities.
* **Top Account Dominance**: A very small tier of corporate client accounts drives the vast majority of purchase values.
* **Salesforce Performance Gaps**: An increase in total order volume processed by a salesperson does not always correlate to a higher dynamic net profit margin.
* **Temporal Revenue Stability**: Incorporating the date dimension reveals highly stable and consistent year-over-year revenue growth parameters.
* **Profit Margin Variance**: Certain customer categories generate massive revenue volumes but carry significantly lower net profit returns.

### 🎯 2 Strategic Business Recommendations
* **Optimize Top-Tier Account Margins**: Review contract pricing tiers and bulk discount structures for high-volume accounts to protect corporate net profits.
* **Geographical Media Reallocation**: Focus the upcoming quarterly marketing budget exclusively on expanding footprints within the top 5 revenue-generating cities.

### 💡 3 Additional Challenge Insights (`v_TopProducts`)
* **Pareto Principle Distribution (80/20 Rule)**: The 10 extracted stock products form the primary financial core, accounting for the absolute majority of enterprise cash flows.
* **Volume vs. Value Delta**: Select product models hold top structural ranks strictly due to premium unit pricing strategies rather than high unit sell velocity.
* **Visual Trait Affinity**: Dimensional filtering maps a strong trend where specific product coloring variations attract order velocities at significantly faster rates.

---
## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)
