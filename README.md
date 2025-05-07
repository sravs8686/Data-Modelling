# Data Modeling: Star Schema vs Snowflake Schema

This repository demonstrates the design of **Star** and **Snowflake** schemas for a mock e-commerce dataset using SQL. It includes schema creation scripts and example queries to compare performance and use cases.

---

## 📌 Project Overview

Data modeling is a key skill for data engineers, especially in designing efficient data warehouses. This repo shows how to:
- Build dimensional models (Star & Snowflake)
- Compare normalized vs denormalized approaches
- Write analytic SQL queries on both schemas

---

## 🛒 Mock E-commerce Dataset

We simulate data from an online retail store, including:
- Customer details
- Products and categories
- Orders and order details
- Geographic data (region, country)

---

## 📂 Contents

| File | Description |
|------|-------------|
| `star_schema.sql` | DDL statements for denormalized Star Schema |
| `snowflake_schema.sql` | DDLs for normalized Snowflake Schema |
| `sample_queries.sql` | Sample analytical queries (total sales, top products, etc.) |
| `mock_data_description.md` | Describes mock data fields and relationships |

---

## 💡 Example Queries

- Total revenue by product category
- Average order value by region
- Monthly sales trend
- Top 5 customers by order count

---

## 🛠️ Tech Stack

- SQL (PostgreSQL)
- Can be run on local PostgreSQL or cloud data warehouses

---

## 🧪 How to Use

1. Clone the repo
2. Run the schema creation scripts in your PostgreSQL client
3. Use `sample_queries.sql` to run and test analytical use cases

---

## 📈 Star vs Snowflake - When to Use

| Feature | Star Schema | Snowflake Schema |
|--------|-------------|------------------|
| Simplicity | ✅ Simple | ❌ More complex |
| Performance | ✅ Fast reads | ⚠️ Slower joins |
| Storage | 🔴 Redundant data | ✅ Normalized, optimized |
| Use Case | Dashboards, fast querying | Data integrity, complex models |

---

## 📬 License

Open-sourced under the MIT License.
