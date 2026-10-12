# Lesson 08: Interactive Corporate Dashboards – Power BI Modeling & Semantic Layers
**Course Project**: TechMood Data Analytics Bootcamp (Lesson 08)  
**Target Schema**: `AdventureWorks Sales Enterprise` (Semantic Data Model)  
**Analytics Tier**: Relational Engineering, Multi-Tier KPI Architectures, & Dynamic Parameters  

---

## 📊 1. Project Overview & Schema Architecture
This project focuses on advanced business intelligence engineering, semantic data modeling, and interactive diagnostic design using the production transaction logs of **AdventureWorks Sales Enterprise**.

The primary objective is to build a high-performance relational framework by deploying an explicit **Star Schema model**. This strategy separates transactional rows from metadata dimensions, managing analytical evaluation loops directly inside the **Power BI Desktop** engine. This delivers low-latency dashboards optimized for executive KPIs, automated time-series tracking, and live scenario simulations.

### 🛠️ Core BI Tasks Implemented:
* **Star Schema Implementation**: Constructing clean 1:* relationships between the central fact table and distinct dimensions.
* **Explicit DAX Formulation**: Overriding implicit, risky aggregations with optimized row-by-row iterator metrics (`SUMX`).
* **Predictive What-If Sandbox**: Engineering numeric range parameters to simulate market shifts dynamically.

---

## 2. Case Study: Scalable Business Intelligence Data Prep
### 📋 The Business Dilemma
An enterprise managing high-volume relational tables needs automated, live dashboard update schedules. Attempting to execute heavy data transformation loops, multi-table string indexing, and complex cross-schema intersections (`INNER JOIN` operations) across multiple raw dimension tables inside the **Power BI** client file drastically degrades query response times, hits workspace performance limits, and creates calculation inconsistencies among data team members.

### 🛠️ The Architectural Solution
By deploying dedicated, optimized **Power BI Semantic Models**, we push the query calculation burden directly to an engineered relational core. The data visualization engine no longer scans unindexed transaction intersections dynamically; it securely requests pre-processed metrics via structured dimensional paths, eliminating calculation redundancy and minimizing dashboard visual loading times.

### 💡 Case Study Architectural Insights:
1. **Engine Workload Efficiency**: Distributing transactional facts from descriptive dimensions prevents data model bloating and visualization rendering lags.
2. **Standardization of Logic**: Writing explicit DAX measures establishes a uniform calculations framework across all connected dashboard visual tiles, avoiding metric contradictions.
3. **Optimized Network Payloads**: Enforcing clean numerical data keys minimizes memory storage requirements and accelerates performance processing during cross-filter queries.

---

## 📝 3. Business Insights & Recommendations

### 💡 5 Core Sales Insights (`Sales Dashboard`)
* **Portfolio Concentration**: Over 65% of absolute net profit stability is heavily concentrated within just two major key bike subcategories (*Mountain Bikes* & *Road Bikes*).
* **The Volume-Profit Trap**: A very large tier of accessory transactions drives high sales volume metrics but carries significantly lower net profit returns due to compressed margins.
* **Geographical Clustering**: Incorporating the geography dimension reveals that a small group of high-velocity cities accounts for the vast majority of total corporate revenue.
* **Predictive Market Sensitivity**: Running the What-if scenario parameter shows that a minor 10% drop in sales volume instantly pushes marginal segments into net financial losses.
* **Demographic Value Disparity**: Specific customer profile segments (e.g., married buyers) generate significantly higher average transaction values and profit per invoice.

### 🎯 2 Strategic Business Recommendations
* **Enforce Accessories Price Floors**: Stop volume-based discounting strategies on low-margin accessories and introduce product bundling to protect enterprise profit margins.
* **Geographical Resource Reallocation**: Focus the upcoming quarterly marketing and inventory budgets exclusively on expanding footprints within the top revenue-generating city hubs.

---

## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)
