# 📊 Superstore Sales & Profitability Analysis

> **End-to-end data analytics project using MySQL, Power BI & DAX to uncover sales, profitability, customer, product, regional and discount insights.**

[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge\&logo=mysql\&logoColor=white)](https://www.mysql.com/)
[![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge\&logo=powerbi\&logoColor=black)](https://powerbi.microsoft.com/)
[![SQL](https://img.shields.io/badge/SQL-003B57?style=for-the-badge)](https://en.wikipedia.org/wiki/SQL)
[![DAX](https://img.shields.io/badge/DAX-Data%20Analysis-107C10?style=for-the-badge)](https://learn.microsoft.com/en-us/dax/)

---

## 🚀 Project Overview

This project analyzes the **Superstore retail dataset** containing **9,994 sales records** across 2014–2017.

The objective was to transform raw transactional data into actionable business insights using **SQL for data analysis and Power BI for interactive visualization**.

The analysis focuses on:

* 💰 Sales & profitability
* 📈 Yearly and monthly performance
* 🛍️ Product & sub-category performance
* 👥 Customer & segment analysis
* 🌎 Regional performance
* 🚚 Shipping modes
* 🏷️ Discount impact on profitability
* 📊 KPI-driven business reporting

---

## 🎯 Business Questions

The project answers questions such as:

1. What are the overall sales, profit and order volumes?
2. Which categories and sub-categories generate the most profit?
3. Which products generate significant losses?
4. Which customer segments contribute the most revenue?
5. Which regions perform best in terms of sales and profitability?
6. How does discount level relate to profit margin?
7. How do different shipping modes perform?
8. How have sales and profit changed over time?
9. Which customers generate the highest sales?
10. Where are the major opportunities for improving profitability?

---

# 📌 Key Performance Indicators

| Metric                   |         Value |
| ------------------------ | ------------: |
| 💰 Total Sales           |    **$2.30M** |
| 📈 Total Profit          |  **$286.40K** |
| 📦 Total Quantity        |    **37,873** |
| 🧾 Total Orders          |     **5,009** |
| 👥 Customers             |       **793** |
| 🛍️ Products             |     **1,862** |
| 📊 Overall Profit Margin |    **12.47%** |
| 📅 Analysis Period       | **2014–2017** |

---

# 📊 Power BI Dashboard

The project contains a **3-page interactive Power BI dashboard** designed for executive-level analysis.

## 1️⃣ Executive Overview

Provides a high-level view of:

* Total Sales
* Total Profit
* Total Quantity
* Total Orders
* Customers
* Products
* Yearly Sales & Profit
* Sales by Category
* Sales by Region

![Executive Overview](screenshots/executive-overview.png)

---

## 2️⃣ Product & Customer Analysis

Focuses on detailed performance across:

* Product sub-categories
* Top 10 products by sales
* Bottom 10 products by profit
* Customer segments
* Profit margin by segment
* Region × customer segment performance

![Product & Customer Analysis](screenshots/product-customer-analysis.png)

---

## 3️⃣ Business Insights

Analyzes important profitability and operational factors:

* Profit by discount level
* Profit margin by shipping mode
* Monthly sales trends
* Monthly profit trends
* Time-based performance patterns

![Business Insights](screenshots/business-insights.png)

---

# 🔍 Key Business Insights

### 💻 Technology leads category profitability

Technology generated approximately **$836K in sales** and **$145K in profit**, producing a **17.40% profit margin**.

### 🪑 Furniture has comparatively low profitability

Furniture generated approximately **$742K in sales**, but only **$18.45K in profit**, resulting in a **2.49% profit margin**.

This indicates that strong revenue does not necessarily translate into strong profitability.

### 🏷️ Higher discounts are associated with weaker profitability

The analysis shows a clear negative relationship between higher discount levels and aggregate profit margin.

At discounts of **30% or more**, the dataset shows negative aggregate profitability.

> Note: This is an observed relationship in the dataset and does not by itself establish that discounts caused the losses.

### 🌎 West region shows strong performance

The West region generated approximately:

* **$725K Sales**
* **$108K Profit**
* **14.94% Profit Margin**

### 👥 Home Office has the highest segment margin

| Segment     |  Sales | Profit Margin |
| ----------- | -----: | ------------: |
| Consumer    | $1.16M |        11.55% |
| Corporate   |  $706K |        13.03% |
| Home Office |  $430K |    **14.03%** |

### 📈 Sales increased strongly toward 2017

| Year |     Sales |     Profit |
| ---- | --------: | ---------: |
| 2014 |     $484K |     $49.5K |
| 2015 |     $471K |     $61.6K |
| 2016 |     $609K |     $81.8K |
| 2017 | **$733K** | **$93.4K** |

---

# 🧮 DAX Analysis

A reusable **Profit Margin** measure was created in Power BI:

```DAX
Profit Margin =
DIVIDE(
    SUM('superstore sales'[profit]),
    SUM('superstore sales'[sales]),
    0
)
```

Additional calculated fields were created for chronological monthly analysis, including:

```DAX
Month Year =
FORMAT(
    'superstore sales'[order_date_clean],
    "MMM yyyy"
)
```

and a numerical sorting column:

```DAX
Month Year Sort =
'superstore sales'[order_year] * 100 +
'superstore sales'[order_month_no]
```

---

# 🗄️ SQL Analysis

The SQL analysis was organized into four modules:

### `01_data_quality.sql`

* Record counts
* Distinct orders
* Distinct customers
* Distinct products
* Date range
* Missing-value checks

### `02_sales_analysis.sql`

* Overall sales & profit
* Yearly performance
* Category performance
* Regional performance
* Monthly trends

### `03_customer_analysis.sql`

* Customer performance
* Top customers
* Customer segments
* Region × segment analysis

### `04_profitability_analysis.sql`

* Sub-category profitability
* Top/bottom products
* Discount profitability
* Shipping-mode profitability

---

# 🛠️ Tools & Technologies

| Tool             | Purpose                                 |
| ---------------- | --------------------------------------- |
| **MySQL**        | Data querying & business analysis       |
| **SQL**          | Data aggregation and analytical queries |
| **Power BI**     | Interactive dashboard & visualization   |
| **DAX**          | Calculated measures & KPIs              |
| **Git & GitHub** | Version control & project documentation |

---

# 📁 Project Structure

```text
superstore-sales-analysis/
│
├── README.md
│
├── sql/
│   ├── 01_data_quality.sql
│   ├── 02_sales_analysis.sql
│   ├── 03_customer_analysis.sql
│   └── 04_profitability_analysis.sql
│
├── powerbi/
│   └── Superstore_Sales_Dashboard.pbix
│
├── screenshots/
│   ├── executive-overview.png
│   ├── product-customer-analysis.png
│   └── business-insights.png
│
└── data/
    └── README.md
```

---

# 📈 Analytical Approach

The project followed a structured analytics workflow:

```text
Raw Dataset
     ↓
Data Quality Checks
     ↓
Data Cleaning & Date Transformation
     ↓
SQL Exploratory Analysis
     ↓
KPI & Business Metric Identification
     ↓
Power BI Data Modeling
     ↓
DAX Measures
     ↓
Interactive Dashboard
     ↓
Business Insights & Recommendations
```

---

# 💡 Business Recommendations

Based on the observed patterns in the dataset:

* Review high-discount transactions and evaluate their profitability.
* Investigate loss-making products and sub-categories.
* Examine Furniture pricing and cost structure due to its comparatively low margin.
* Monitor regional and segment-level profitability rather than relying only on revenue.
* Use customer-level profitability analysis alongside sales volume when evaluating key accounts.
* Track monthly sales and profit trends to identify seasonal patterns and changes in business performance.

---

# 🔮 Future Improvements

Potential extensions to this project include:

* Customer **RFM segmentation**
* Customer lifetime value analysis
* Sales forecasting
* Profitability forecasting
* Automated Power BI refresh
* More advanced DAX calculations
* Customer churn analysis
* What-if analysis for discount strategies
* Python-based exploratory data analysis
* Interactive drill-through pages

---

# 📚 Dataset

The project uses the **Superstore retail dataset**, containing transactional information including:

* Orders
* Customers
* Products
* Categories
* Sales
* Quantity
* Discounts
* Profit
* Regions
* Shipping modes
* Order and shipping dates

The raw dataset is not included in this repository.

See [`data/README.md`](data/README.md) for more information.

---

# 👩‍💻 About Me

**Divya Gupta**

Computer Engineering graduate interested in **Data Analytics, Software Development and AI-powered applications**.

Currently building practical projects involving **SQL, Power BI, DAX, JavaScript, React, Node.js and AI technologies**.

---

⭐ **If you found this project useful, consider giving the repository a star!**

---

### 📌 Project Highlights

**9,994 records** • **$2.30M Sales** • **$286K Profit** • **5,009 Orders** • **3-Page Power BI Dashboard** • **MySQL + SQL + DAX**
