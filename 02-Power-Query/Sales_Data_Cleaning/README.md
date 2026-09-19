# Lesson 02: Power Query & Data Cleaning Task

## 📊 Overview
This project focuses on the ETL (Extract, Transform, Load) workflow using Microsoft Excel Power Query. The goal was to take a messy, raw sales dataset and transform it into clean, structured data ready for accurate business analysis.

---

## 🏪 Case Study: Data Quality Issues Identified
Before starting the clean-up, I analyzed the raw file from a data quality perspective. Building a report on the uncleaned data would cause serious business errors:
1. **Duplicates:** Double-counting orders would artificially inflate sales totals, misleading management into making wrong financial decisions.
2. **Inconsistent Names:** Random spaces and formatting in customer names split single customers into multiple identities, breaking customer loyalty analysis.
3. **Data Type Errors:** Unit prices and dates stored as texts or raw numbers blocked Excel from performing sum math or chronological filtering.
---

## ⚙️ My Power Query Cleaning Steps (ETL Workflow)
I built a step-by-step automation pipeline to fix all the issues:
* **Step 1 (Purging):** Removed duplicate rows and blank cells to ensure financial integrity.
* **Step 2 (Text Cleaning):** Standardized data by splitting `CustomerName` into `First Name` and `Last Name` (using space delimiter). Applied `Trim`, `Clean`, and `Capitalize Each Word` to fix the letters.
* **Step 3 (Data Types):** Adjusted data formats, converting sales and prices into Decimal Numbers/Currency, and setting appropriate column types.
* **Step 4 (Calculated Field):** Added a new custom column named `Total Revenue` using a simple multiplication formula: `[Quantity] * [UnitPrice]`.
* **Step 5 (Aggregation):** Used `Group By` to summarize total sales by `ProductCategory`.
---

## 🔥 Challenge Completed: Automation & Refresh Test
To test the pipeline's robustness, I duplicated the raw dataset and manually **deleted 30 rows and changed several customer names randomly**. 
After pointing the Power Query `Source` step to this updated file and clicking **`Refresh`**, the entire system automatically cleaned and loaded the new data in seconds without any manual re-work. This proves the workflow is 100% automated for future reports.

---

## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://www.linkedin.com/in/haneenalmasry/)

