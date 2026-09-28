# Lesson 04: Power Pivot & DAX Measures Task

## 📊 Overview
This project focuses on transitioning from relational data modeling to creating dynamic business metrics and Key Performance Indicators (KPIs) using **Power Pivot** and **DAX Measures** in Microsoft Excel. The goal was to diagnose a profit margin crisis using advanced data formulas.

---

## 🧠 Case Study: The Profit Margin Crisis Resolved
- **The Problem:** The e-commerce store experienced a massive spike in total revenue, but the overall `Profit Margin %` dropped heavily.
- **The Diagnosis (From Pivot Table Analytics):** 
  - The crisis is driven by the **Furniture** category in the **South Region**.
  - Furniture generated a massive revenue of **\$742,000**, but yielded a terrible profit margin of only **2%**.
  - **The Cause:** Aggressive, uncalculated discount campaigns combined with high shipping and logistics costs to the South completely ate up the net profits.

### 🎯 Propose Management Decisions (Recommendations):
1. **Restructure Furniture Pricing:** Immediately stop direct discounts on the Furniture category and negotiate better wholesale prices with suppliers to protect the profit margin.
2. **Conditional Free Shipping:** Stop open free shipping to the South region and tie it to a minimum basket value to cover hidden freight logistics costs.

---

## ⚙️ Implemented DAX Measures (Calculation Area)
I built 6 core business measures to automate the store's financial analytics:
* `Total_Sales` = `SUM(Fact_Sales[total Sales])` -> Standardized as Currency.
* `Total_Cost` = `SUMX(Fact_Sales, Quantity * UnitPrice)` -> Calculates total transactional inventory costs.
* `Total_Profit` = `[Total_Sales] - [Total_Cost]` -> Direct operational net earnings.
* `Profit_Margin %` = `DIVIDE([Total_Profit], [Total_Sales], 0)` -> Deployed using DIVIDE to protect against zero division errors.
* `Average_Order_Value` = `AVERAGE(Fact_Sales[total Sales])` -> Monitors the average basket size per transaction.
* `Customer_Count` = `DISTINCTCOUNT(Fact_Sales[CustomerID])` -> Evaluates pure customer acquisition reach without duplicate traffic.

---

## 🚀 Connect with me
- **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)
