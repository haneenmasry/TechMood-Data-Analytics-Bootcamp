# Lesson 03: Data Modeling & Star Schema Task

## 📊 Overview
This project demonstrates the transition from flat, isolated tables to a fully relational **Data Model** using Microsoft Excel Power Pivot. The goal was to build a standardized **Star Schema** using the WWI dataset to enable scalable and flexible business intelligence.

---

## 🧩 Schema Architecture (Fact vs. Dimensions)
- **Fact Table:** `Sales` (Contains historical transactions and numeric metrics).
- **Dimension Tables:** `Customers` & `Cities` (Contain unique descriptive attributes).
- **Relationships:** Established One-to-Many (\(1 \rightarrow \infty\)) joins between Primary Keys and Foreign Keys.

---

## 🧠 Case Study: Database Normalization (Star Schema)

### 1. Key Problems:
- **Redundancy:** Repeating text columns (`Customer Name`, `City`) creates huge file sizes and slows execution speeds.
- **Data Quality:** Manual entry repetition risks typos, leading to fractured data and inaccurate filtering.
- **Maintenance:** Updating a customer's location requires changing thousands of rows instead of one single record.

### 2. Proposed Architecture:
- **Fact Table:** `Fact_Sales` (Stays in the center, containing only transactions, metrics, and keys).
- **Dimension Tables:** `Dim_Customers`, `Dim_Cities`, and `Dim_Products` (De-duplicated tables containing descriptors).
- **Relationships:** Linked unique **Primary Keys (PK)** from Dimensions to **Foreign Keys (FK)** in the Fact table using **One-to-Many (1 → ∞)** relationships.

### 3. Business Value:
- Normalization shrinks file sizes and boosts Pivot Table processing speeds.
- Provides high analytical flexibility, allowing management to drill down and filter revenue by City, Customer, or Product with one single click.

---
## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)
