# 🍕 Pizza Sales Analysis (SQL + Excel)

## 📌 Project Overview
Is project mein ek pizza restaurant ke sales data ko analyze kiya gaya hai — SQL (SQLite) ka use karke data se insights nikale gaye, aur Excel mein interactive dashboard bana ke unhe visually present kiya gaya hai.

## 🎯 Objective
- Sales trends samajhna (revenue, orders, best-selling items)
- Business decisions ke liye actionable insights nikalna (peak hours, popular categories, order sizes)
- SQL queries aur Excel formulas/charts dono se cross-verified reporting banana

## 🛠️ Tools & Technologies
- **SQL (SQLite)** — data querying and aggregation
- **Excel** — dashboard, pivot-style analysis, charts (SUMIF, SUMIFS, SUMPRODUCT formulas)

## 📂 Project Structure
```
├── data/Pizza_sales.csv          → Raw dataset (100 rows, pizza orders)
├── database/pizza_sales.db       → SQLite database
├── sql/pizza_sales_queries.sql   → 10 SQL queries with explanations
├── excel/Pizza_Sales_Report.xlsx → Dashboard with KPIs, pivot table, charts
└── README.md                     → Project documentation
```

## 📊 Dataset
100 rows of pizza order data with columns: order ID, pizza name, category, size, quantity, unit price, total price, order date/time.

## 🔍 Key Insights
| Metric | Value |
|---|---|
| Total Revenue | $1,683.65 |
| Total Orders | 41 |
| Total Pizzas Sold | 101 |
| Average Order Value | $41.06 |
| Best-Selling Pizza | The Italian Supreme Pizza (11 units) |
| Top Revenue Category | Veggie ($505.40) |
| Most Popular Size | Large (46 units sold) |
| Busiest Hour | 1 PM (32 orders) |

## 🧮 SQL Analysis
10 queries covering:
1. Total revenue calculation
2. Order & pizza volume metrics
3. Best-selling pizzas by quantity
4. Top revenue-generating pizzas
5. Category-wise revenue breakdown
6. Size-wise sales analysis
7. Average order value
8. Busiest hour of the day
9. Large/bulk orders identification
10. Premium (highest-priced) pizzas

See [`sql/pizza_sales_queries.sql`](sql/pizza_sales_queries.sql) for full queries with comments.

## 📈 Excel Dashboard
The Excel report ([`excel/Pizza_Sales_Report.xlsx`](excel/Pizza_Sales_Report.xlsx)) includes:
- **Raw Data** sheet — source data
- **Summary Dashboard** — KPI cards + Pie chart (category revenue) + Bar charts (size revenue, top 5 pizzas)
- **Pivot Analysis** — Category × Size revenue matrix using SUMIFS formulas
- **How To Use** — formula explanations

## 💡 Business Recommendations
- Focus marketing on **Veggie** category and **Large size** pizzas — highest revenue drivers
- Staff up during **12 PM–2 PM** peak window
- Promote **Italian Supreme Pizza** as a signature/bestseller item

## 🚀 How to Reproduce
1. Load `Pizza_sales.csv` into SQLite using pandas (`df.to_sql`)
2. Run queries from `pizza_sales_queries.sql`
3. Open `Pizza_Sales_Report.xlsx` in Excel to view the dashboard

---
**Author:** [Your Name] | Data Analyst Portfolio Project
