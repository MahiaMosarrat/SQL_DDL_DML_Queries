# HijabBook Store 🧕 – SQL Server DDL & DML Showcase

A complete SQL Server project that simulates an e-commerce database for a fictional **HijabBook Store**. It demonstrates robust use of **DDL** (Data Definition Language) and **DML** (Data Manipulation Language) including tables, constraints, procedures, views, triggers, functions, indexing, and advanced querying - tailored for real-world backend database development.

---

## 🧠 Project Objective

> To design a normalized, fully functional database structure that supports customer orders, products, delivery tracking, and business logic using advanced SQL techniques.

---

## 🛠️ Tech Stack

-   **Database Engine**: Microsoft SQL Server
-   **Language**: T-SQL (DDL, DML, Stored Procedures, Views, Triggers)
-   **IDE**: SQL Server Management Studio (SSMS)

---

## 📐 Schema Overview

The HijabBook Store database includes:

-   `ClientInfo`, `OrderInfo`, `OrderLine` – Customer and sales data
-   `ProductType`, `Color` – Product categorization
-   `DeliveryOption`, `Courier`, `ClientStatus`, `ContactPerson` – Operational metadata

---

## 📂 Files Included

| File Name | Description |
|---|---|
| `DDL.sql` | SQL scripts for database schema creation |
| `DML.sql` | Data manipulation and querying scripts |
| `Diagram of Hijab_BookDB.jpg` | ER diagram for HijabBook Store database |
| `Case Study-HijabBook.pdf` | Project case study and overview document |

---

## ✨ Features Implemented

<details>
<summary><strong>📌 Key SQL Implementations (Click to Expand for Details)</strong></summary>

This project showcases a comprehensive range of SQL features, including:

-   **DDL (Data Definition Language):**
    -   Database and table creation with primary/foreign key constraints.
    -   Creation of `SCHEMABINDING` and `ENCRYPTED` views.
    -   Implementation of stored procedures (CRUD operations, `OUTPUT` parameters).
    -   User-defined functions (Scalar, Inline Table-Valued, Multi-Statement Table-Valued).
    -   Various trigger types (`AFTER`, `INSTEAD OF`, `FOR BULK INSERT`).
    -   Non-clustered indexing for performance optimization.
    -   Cursor-based logic and `MERGE` statements for UPSERT.

-   **DML (Data Manipulation Language):**
    -   Standard `INSERT`, `UPDATE`, `DELETE`, `SELECT` operations.
    -   Advanced querying with `JOIN` clauses, `WHERE` conditions (`LIKE`, `IN`).
    -   Aggregate functions (`SUM`, `AVG`, `COUNT`) and complex grouping (`GROUP BY`, `HAVING`, `ROLLUP`, `CUBE`, `GROUPING SETS`).
    -   Window functions for ranking (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `NTILE`).
    -   Conditional expressions (`CASE`, `IIF`, `COALESCE`, `ISNULL`).
    -   Subqueries, Common Table Expressions (CTEs), and data type conversions.

</details>

---

## 🚀 How to Run This Project

1.  Install **Microsoft SQL Server** (any edition)
2.  Open the `.sql` files in **SQL Server Management Studio (SSMS)**
3.  Execute the scripts in order:
    -   Create schema using `DDL.sql`
    -   Populate and test data using `DML.sql`
4.  *(Optional)* Update `CREATE DATABASE` path if your environment differs

---

## 🎯 Learning Outcomes

-   Practical experience in normalized database modeling
-   Expertise in stored procedures, triggers, and user-defined functions
-   Query optimization and indexing
-   Real-world backend-ready SQL structure for full stack integration

---

## 📬 Feedback / Usage

This repository is open to:
-   Students learning backend SQL design
-   Developers preparing for technical interviews
-   Full stack devs practicing data-driven app architecture

🪄 Fork it | ⭐ Star it | 🛠 Contribute!

---

## 📄 License

Licensed for educational and personal use. Commercial use requires prior permission.
