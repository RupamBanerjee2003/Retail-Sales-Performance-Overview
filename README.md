# 🛍️ Retail Sales Performance Dashboard (SQL + Power BI)
## 📊 Project Overview
This project analyzes **retail sales data** using **SQL for data processing** and **Power BI for visualization**.  
It aims to deliver key insights into **sales performance, profit margin, regional growth**, and **customer behavior**, enabling smarter business decisions.

---

## 🧱 Data Model
The project uses **four relational tables**:

| Table Name | Description |
|-------------|--------------|
| **Regions** | Contains region details and regional managers. |
| **Customers** | Stores customer demographics and their associated region. |
| **Products** | Lists product information including category, unit price, and cost. |
| **Sales** | Transactional sales data linked to product, customer, and region. |

### 🔗 Relationships
- `Regions[RegionID]` → `Customers[RegionID]`  
- `Customers[CustomerID]` → `Sales[CustomerID]`  
- `Products[ProductID]` → `Sales[ProductID]`  
- `Regions[RegionID]` → `Sales[RegionID]`

---

## ⚙️ Tools & Technologies
- 🗄️ **MySQL Workbench** — Data creation, joins, and preprocessing  
- 📊 **Power BI Desktop** — Visualization and interactive reports  
- 🧮 **DAX (Data Analysis Expressions)** — Calculated columns and KPIs  
- 💾 **Excel** — Data import layer before Power BI  

---

## 📏 Key DAX Measures
```DAX
Total Sales = SUM(Sales[TotalAmount])

Total Profit =
SUMX(
    Sales,
    Sales[Quantity] * 
    (RELATED(Products[UnitPrice]) - RELATED(Products[CostPrice]))
)

Profit Margin % = DIVIDE([Total Profit], [Total Sales], 0)

Distinct Customers = DISTINCTCOUNT(Sales[CustomerID])

Total Quantity Sold = SUM(Sales[Quantity])
📈 Dashboard Features
🟩 Top KPIs

💰 Total Sales

💵 Total Profit

📦 Total Quantity Sold

👥 Total Customers

💹 Average Profit Margin %

🟦 Visuals

Bar Chart: Top 5 Customers by Sales (with profit margin tooltip)

Line + Column Chart: Monthly Sales vs Profit Margin trend

Pie Chart: Sales by Product Category

Map: Regional Sales distribution

Matrix Table: Drill-down by Region → Product → Customer

🎛️ Filters / Slicers

📆 Date Range (SaleDate)

🗺️ Region (RegionName)

🧍 Gender (Gender)
🧠 Business Insights

Identified top-performing customers and most profitable products.

Revealed regional variations in sales performance.

Detected seasonal patterns across months.

Measured profitability efficiency through margin analysis.
📸 Dashboard Preview
https://app.powerbi.com/view?r=eyJrIjoiNGUxN2Y5YTMtNjY0Zi00NTI3LWFiYWItNDQ3Yzg1MDcwY2M2IiwidCI6ImNkNTcxMGJlLTBhZmUtNGNjYy05MTNkLTJhZGMyMTdkYjFjNiJ9
👤 Author: Rupam Banerjee
🕓 Year: 2025
📍 Tools: SQL | Power BI | Excel | DAX
