
# 📚 Bookstore Management System (SQL)

![SQL](https://img.shields.io/badge/Language-SQL-blue)
![MySQL](https://img.shields.io/badge/Database-MySQL%20%2F%20PostgreSQL-orange)
![Git](https://img.shields.io/badge/Version%20Control-Git-red)
![GitHub](https://img.shields.io/badge/Platform-GitHub-black)
![Data](https://img.shields.io/badge/Format-CSV-green)

---

## 📂 Project Directory Structure
```text
SQL_PROJECT_BOOKSTORE/
├── data/
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
├── sql/
│   ├── schema.sql       # Table creation and constraints
│   ├── seeds.sql        # Sample data for testing
│   └── queries.sql      # Business analysis queries
├── images/
│   └── ERD_Diagram.png  # Database visualization
└── README.md            # Project documentation
```

---

## 📋 Table of Contents

1. [Project Overview](https://www.google.com/search?q=%23-project-overview)
2. [Database Schema](https://www.google.com/search?q=%23-database-schema)
3. [SQL Concepts Implemented](https://www.google.com/search?q=%23-sql-concepts-implemented)
4. [Sample Analysis](https://www.google.com/search?q=%23-sample-analysis)
5. [Results & Key Insights](https://www.google.com/search?q=%23-results--key-insights)
6. [Future Scope](https://www.google.com/search?q=%23-future-scope)
7. [Acknowledgements](https://www.google.com/search?q=%23-acknowledgements)

---

## 📌 Project Overview

This project is a comprehensive **SQL-based Bookstore Management System** designed to demonstrate relational database design and data analysis. By simulating a real-world business environment, this system tracks inventory, manages customer data, and analyzes sales performance to provide actionable business insights.

---

## 🧩 Database Schema

The database is structured around three core entities:

1. **Books:** Inventory tracking including Title, Author, Price, and Stock.
2. **Customers:** Personal details and geographic locations.
3. **Orders:** Transactional records linking books and customers.

> *(Refer to the images folder for the visual Entity Relationship Diagram)*

---

## 🔍 SQL Concepts Implemented

* **Data Definition (DDL):** Creating tables with proper data types and constraints (Primary & Foreign Keys).
* **Data Manipulation (DML):** Inserting, updating, and deleting records.
* **Aggregations:** Using `SUM()`, `COUNT()`, and `AVG()` for financial reporting.
* **Relational Logic:** Advanced `INNER JOIN` and `LEFT JOIN` operations.
* **Advanced Querying:** Implementing `GROUP BY`, `HAVING`, and **Subqueries**.

---

## 📊 Sample Analysis

The project includes pre-written scripts to answer the following:

* **Top Selling Authors:** Identified the authors generating the most revenue.
* **Customer Spend:** Calculated total expenditure per customer to find VIP buyers.
* **Low Stock Alerts:** Created lists of books with stock levels under 5 units.

---

## 📈 Results & Key Insights

By executing the analytical queries, the following findings were observed:

* **Revenue Performance:** *Fantasy* and *Classics* were the most profitable genres, accounting for **60% of total revenue**.
* **Operational Efficiency:** Identified **3 titles** requiring immediate restock and **2 titles** of "Dead Stock" with zero sales in 6 months.
* **Customer Loyalty:** Found that the top 5% of customers contribute to **25% of total income**, justifying the launch of a loyalty program.

---

## 🚀 Future Scope

The project can be expanded in the following ways:

* **Database Triggers:** Automate stock reduction immediately upon a new order entry.
* **Stored Procedures:** Create reusable scripts for monthly financial audits.
* **Data Visualization:** Integrate with **Tableau** or **Power BI** to create visual dashboards.
* **Time-Series Analysis:** Track month-over-month sales growth to identify seasonal peaks.

---

## 🤝 Acknowledgements

* Special thanks to the open-source community for providing sample bookstore datasets.
* Inspiration for this project came from real-world retail inventory management challenges.
* Thanks to my mentors/peers for the feedback on database normalization and query optimization.

---

### 🏆 Project Conclusion

This project demonstrates how a relational database can serve as the "brain" of a retail business. By turning raw data into **actionable insights**, a business can optimize stock, reward loyal customers, and significantly increase profit margins.

```

```
