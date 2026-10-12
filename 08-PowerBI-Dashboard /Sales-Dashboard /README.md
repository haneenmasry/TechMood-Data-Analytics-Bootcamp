# AdventureWorks Sales Dashboard (Lesson 08)

## 🛠️ Bootcamp Assignment Summary (Lesson 08)
This project covers the primary implementation of business intelligence dashboarding workflows inside Power BI Desktop:
* **Data Modeling:** Cleaned source data tables inside Power Query and engineered a 1:* relational Star Schema.
* **KPI Framework:** Designed corporate summary cards for primary performance visibility.
* **Basic Visualization:** Built structured time-series column charts to track sales distribution.
* **What-If Analysis Baseline:** Added a parameter range slider control to run simple profit variance simulations.

---

## 📋 1. Case Study
* **The Corporate Dilemma:** AdventureWorks' commercial leadership was regularly reviewing strong high-level global sales volumes. However, total net profit margins at the end of the fiscal year did not match this high volume. High product manufacturing costs in specific segments hid serious operational issues because traditional managers could not evaluate database metrics row-by-row.
* **The BI Architecture Solution:** We fixed this visibility gap inside Power BI by designing a clean Star Schema model to isolate transactional facts (`Sales`) from descriptive dimensions (`Product`, `Customer`, `Date`). We built explicit DAX measures to calculate actual revenues and baseline costs safely. Finally, we added a basic interactive What-if slider parameter on the screen so executives could immediately run market changes and see updates across their KPI metrics instantly.

---

## 💡 2. Top 5 Business Insights
1. **Core Profit Concentration:** Just two product lines (*Mountain Bikes* and *Road Bikes*) generate **over 65% of all net profits** for the company, making them the absolute financial backbone of the enterprise.
2. **The High Volume Trap:** *Clothing* and *Accessories* account for **60% of total transactional rows**, yet contribute **less than 10% of real net profits** due to compressed low-margin structures.
3. **Territorial Profit Clustering:** Data distribution checks reveal that a tiny group of cities within the United States generates **over 70% of North American profits**, while nearby territories operate at near net losses.
4. **Predictive Volatility Sensitivity:** Running the What-if scenario parameter shows that a minor **10% drop in market sales volume** instantly pushes the entire *Touring Bikes* category into a deep financial loss.
5. **Demographic Target Value:** Cross-filtering sales with customer metadata shows that married customer segments represent the highest average transaction values, yielding a **22% higher profit margin per invoice** than single buyers.

---

## 🎯 3. Actionable Strategic Recommendations
1. **Enforce Price Floors on Accessories:** Cut out volume-based discounting on *Accessories* and *Clothing*. Introduce minimum price restrictions or bundle them as add-on gifts with premium bike purchases to protect profit margins instead of chasing empty sales volume.
2. **Shift Budgets to High-Yield Clusters:** Stop distributing logistics and operational assets evenly across territories. Reallocate **60% of unallocated marketing and inventory budgets** directly to the high-performing city clusters pinpointed by the dashboard.

---
## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)
