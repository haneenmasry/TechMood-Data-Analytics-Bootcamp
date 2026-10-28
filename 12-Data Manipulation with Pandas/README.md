# 🐼 Lesson 12: Sales Data Cleaning & Manipulation with Pandas

This repository documents the advanced programmatic data engineering, cleansing, and manipulation pipelines implemented for **Lesson 12** of the TechMood Data Analytics Bootcamp.

---

## 📊 1. Project Overview & Schema Architecture

This project delivers algorithmic data preprocessing, automated missing-value restoration, and programmatic aggregation built on top of raw transactional sales datasets using the **Pandas** and **NumPy** ecosystems.

The primary objective is to engineer a scalable data cleaning pipeline that transforms corrupted, untyped csv/text structures into tidy, memory-optimized DataFrames. By applying conditional filtering (Boolean Indexing), nullable data type casting (`Int32`, `float64`), string standardization, and multi-metric group aggregations (`groupby`), this pipeline guarantees dataset readiness for advanced analytics and enterprise-grade downstream BI tools.

### 🛠️ Core BI Tasks Implemented:
* **Advanced Data Inspection**: Deployed programmatic diagnostic routines (`head`, `info`, `describe`) to evaluate structural integrity and map structural anomalies.
* **Data Type Rectification**: Programmatically parsed mixed-type columns, casting textual numbers to decimal floats and handling datetime conversions safely.
* **Missing Value Imputation**: Implemented robust statistical imputation frameworks, resolving missing records through adaptive median-based and logical constant filling.
* **Segment Aggregation Engineering**: Constructed advanced grouping structures using `groupby().agg()` to calculate category-specific revenue metrics concurrently.

---

## 🧩 Case Study Overview

### 🔍 Problem Description:
You have a sales data file containing customer transactions, products, prices, and quantities. However, it contains missing values and incorrect data types that severely distort financial reporting and analytics accuracy.

### 🛠️ Methodology & Essential Pandas Functions Used:

#### 1. Data Inspection
* **`head()`**: Previews the initial rows to understand the table layout and verify structural alignment.
* **`info()`**: Discovers conflicting data types, uncovers missing records, and evaluates memory footprint.
* **`describe()`**: Generates descriptive summary statistics for numeric data (mean, standard deviation, and outliers).

#### 2. Data Cleaning & Preprocessing
* **`to_numeric()`**: Rectifies corrupted or string-formatted sales values into proper decimal floats.
* **`astype()`**: Casts discrete counts (like Quantity) into nullable integers (`Int32`) to safely preserve blank cells.
* **`isnull()`**: Targets and maps out the exact placement of missing fields across all features.
* **`fillna()`**: Cleanses empty rows through data imputation (using the median for sales and fixed defaults for quantities).
* **`median()`**: Computes a robust central tendency baseline unaffected by radical data spikes or anomalies.
* **`str.strip()`**: Eradicates trailing whitespaces from textual categories and product name labels.
* **`str.title()`**: Standardizes casing structures across alphanumeric descriptions.
* **`drop_duplicates()`**: Discards completely identical entries to prevent artificial revenue and log inflation.

#### 3. Data Aggregation
* **`groupby()` + `sum()`**: Groups records together by category nodes to compute total net generated revenue.
* **`reset_index()`**: Flattens nested index hierarchies back into clean tabular formats ready for dashboard consumption.

---

## 📊 Top 5 Business Insights Extracted

Following rigorous data restoration and category aggregation, the following strategic insights were uncovered:

1. **True Revenue Disclosure:** Cleaning missing data and string artifacts reveals hidden revenue figures, preventing management from discontinuing seemingly underperforming categories.
2. **Identifying the Revenue Engine:** Category grouping isolates the strategic business segments generating the highest gross revenue to optimize marketing spend allocation.
3. **Understanding Cart Behavior:** Cross-analyzing normalized sales and quantities flags whether a category relies on "high-ticket single purchases" versus "high-volume budget orders."
4. **Data Volume Preservation:** Employing statistical imputation rather than aggressive row-dropping preserves historical customer behavior profiles for longitudinal analysis.
5. **Inventory & Logistical Optimization:** Correlating clean category metrics against geographic sectors exposes unmapped local demand, aiding regional warehouse restocks.

---
## 🚀 Connect with me
* **LinkedIn:** [Haneen Almasry](https://linkedin.com)
