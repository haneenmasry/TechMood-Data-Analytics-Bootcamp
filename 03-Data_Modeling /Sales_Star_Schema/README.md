# Lesson 03: Data Modeling & Star Schema Task

## 📊 Overview
This project demonstrates the transition from flat, isolated tables to a fully relational **Data Model** using Microsoft Excel Power Pivot. The goal was to build a standardized **Star Schema** using the WWI dataset to enable scalable and flexible business intelligence.

---

## 🧩 Schema Architecture (Fact vs. Dimensions)
- **Fact Table:** `Sales` (Contains historical transactions and numeric metrics).
- **Dimension Tables:** `Customers` & `Cities` (Contain unique descriptive attributes).
- **Relationships:** Established One-to-Many (\(1 \rightarrow \infty\)) joins between Primary Keys and Foreign Keys.

---

## 🧠 Case Study: Database Normalization
- **The Problem:** Storing customer names and cities inside one flat table causes heavy data redundancy, massive file sizes, and high typing error risks.
- **The Solution:** Separating descriptors into Dimension tables reduces file footprint and optimizes processing speed, allowing seamless analytical drill-downs in Pivot Tables.

---
## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)
