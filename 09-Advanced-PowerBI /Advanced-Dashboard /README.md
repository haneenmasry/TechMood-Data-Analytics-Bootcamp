# Lesson 09: Advanced Power BI Filtering, Matrix Ingestion, & Visual Interactions
**Course Project**: TechMood Data Analytics Bootcamp (Lesson 09)  
**Target Schema**: `AdventureWorks Sales Enterprise` (Semantic Data Model)  
**Analytics Tier**: Interface Engineering, Interactive Control Slicers, & Conditional UI Design  

---

## 📊 1. Project Overview & Schema Architecture
This project focuses on advanced user interface engineering, visual synchronization management, and the construction of smart monitoring dashboards using the **AdventureWorks Sales Enterprise** semantic data model.

The primary objective is to transition the report from a static data representation into a highly dynamic, flexible environment tailored to executive leadership requirements. By deploying advanced cross-filtering across multiple scopes (Visual, Page, and Report tiers), ingesting cross-tabulated Matrix analytics, and applying preattentive conditional formatting rules, this model extracts granular territorial and دوري seasonal trends without degrading visual responsiveness or causing metrics friction on executive KPIs.

### 🛠️ Core BI Tasks Implemented:
* **Advanced Cross-Filter Slicing**: Integrated responsive slicers to isolate and filter data structures based on geographical (`Customer[State-Province]`) and temporal (`Sales[OrderDate]`) dimensions.
* **Interaction Isolation Engineering**: Configured advanced `Edit Interactions` logic to shield high-level corporate performance metrics from visual distortion caused by localized sub-filtering.
* **Matrix Data Ingestion**: Engineered cross-tabulated matrix visual models to analyze intersections of revenue and net profit across product hierarchies and geographical territories compactly.
* **Conditional Formatting Deployment**: Applied automated treshold scale formatting on the matrix tier to instantly map operational exceptions, margin inversions, and high-performing anomalies.

---

## 🧠 2. Case Study: Mitigating Metric Distortion in High-Interaction Dashboards
### 📋 The Business Dilemma
The corporate commercial leadership requires the ability to slice sales and margin metrics dynamically across deep regional and temporal dimensions. However, when regional branch managers engage with local slicers to isolate specific territories, the default cross-filtering behaviour updates the entire dashboard canvas. This alters and distorts the global executive benchmark metrics (Global KPIs) at the top of the screen, removing the stable reference baselines required by upper management to gauge global target performance.

### 🛠️ The Architectural Solution
We engineered a context-isolated visual interface by overriding default filtering behaviors using Power BI’s `Edit Interactions` framework. The high-level KPI scorecard layer was completely decoupled from regional and seasonal slicers. Now, when a territory manager applies a local filter, only the underlying matrix grids and trend lines update dynamically. The top-level global benchmarks remain anchored, allowing executives to contrast local performance against corporate baselines instantly without facing visual distortion or data misrepresentation.

### 💡 Case Study Architectural Insights:
1. **Context-Isolated KPIs**: Decoupling the visual filtering context of macro-level scorecards preserves total reference baselines during low-level territory exploration.
2. **Tabular Information Grouping**: Migrating flat tabular records into aggregated cross-tabulated Matrix views downsizes canvas footprint and unifies multidimensional dimensions without cognitive overload.
3. **Preattentive Visual Cues**: Deploying conditional color scale overlays automatically directs the executive's eye to margin outliers and operational exceptions without manual row-by-row searching.

---

## 📝 3. Business Insights & Recommendations

### 💡 5 Core Sales Insights (`Advanced Dashboard`)
* **US Market & Bikes Dominance**: **California** (specifically **Los Angeles** city) within the United States stands out as the primary profit engine, heavily powered by *Mountain Bikes* lines.
* **Australia Volume vs Profit**: **New South Wales** (**Sydney** city) generates the highest transactional volume for clothing lines, yet net margin contribution remains compressed **under 10%** due to high logistics costs.
* **Europe Profit Clustering**: Within the European theater, sales are stagnant except for a major financial hub in the United Kingdom (**England** region, **London** city), which commands **70% of total continental profit**.
* **Edit Interactions Shield**: Enforcing interaction isolation rules keeps global corporate KPIs completely stable and accurate, even when downstream users slice metrics down to **British Columbia** in **Canada**.
* **Conditional Formatting Outliers**: Conditional scales flagged **Berlin** (**Germany**) in red; identifying highly active product models that are operating at a net loss because unit prices do not cover standard material costs.

### 🎯 2 Strategic Business Recommendations
* **Stop Discounts in Sydney**: Immediately eliminate volume-based discounting on accessories and clothing across **Sydney** and **New South Wales**. Bundle them as promotional add-on incentives for premium bike purchases to protect margin integrity.
* **Budget Shift to LA & London**: Reallocate **60% of unutilized marketing and inventory budgets** away from low-yield territories and funnel them directly into **Los Angeles** and **London** to accelerate cash conversion.

### 💡 3 Additional Challenge Insights (`Executive Deep-Dive`)
* **Severe Capital Clustering**: Enabling geographic drill-down paths uncovers that **over 70% of regional profits** cluster tightly inside a few major urban centers, leaving wider geographic territories commercially underutilized.
* **Hidden Inventory Losses**: Descending to the city grain (Level 3 Hierarchy) reveals that severe pricing errors in just two small peripheral cities completely eroded the macro-margin baseline of an otherwise highly profitable state.
* **Demographic Product Alignment**: Cross-dimensional AI parsing maps an automated demographic affinity; premium bike models align strongly with married client segments, yielding **22% higher invoice margins** than single buyers.

---
## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://linkedin.com)
