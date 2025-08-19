# Sales Data Warehouse — SQL Project

A concise MySQL project that demonstrates building and analyzing a **Sales Data Warehouse**. It includes data loading, cleaning, and a set of analytical queries and stored procedures.

## Features

- **Database Setup**
  - Create database `sales`
  - Import dimension tables (Product, Customer, Territory, Calendar, Returns, etc.)
  - Bulk-load fact table `fact_sales` using `LOAD DATA INFILE`

- **Data Cleaning**
  - Convert date fields to `DATE`
  - Convert numeric fields to `DECIMAL`
  - Enforce consistent schema types

- **Analytical Queries**
  1. Total sales quantity per product  
  2. Sales revenue by region  
  3. Revenue by product category  
  4. Top 10 customers by spend  
  5. Orders by region  
  6. Procedure: total revenue for a category  
  7. Procedure: products sold within a date range  
  8. Month-over-month sales with `LAG()`  
  9. Orders per customer with `ROW_NUMBER()`  
  10. Repeat customers  
  11. Percentage of returned products  
  12. Most popular product in each category  
  13. Top-spending customer per region  
  14. Price vs. category average (window function)  
  15. Customers ordering across multiple territories  

---

## Tech Stack
- MySQL 8.0
- SQL (DDL, DML, window functions, stored procedures)

---

## Repository Contents
- `sales_project.sql` — full script (DB creation, cleaning, queries, procedures)

---

## How to Run

1. Clone this repository.  
2. Open `sales_project.sql` in MySQL Workbench (or run via CLI).  
3. Execute the script step by step (create DB → load data → clean → queries).

**Notes**
- If using `LOAD DATA INFILE`, ensure:
  - `local_infile = 1` is enabled.
  - The CSV path is accessible to MySQL (adjust paths as needed).
- The script expects dates in `MM/DD/YYYY` before conversion.

---

## Author
**Md Al Fahim Fuyad**  
East West University  
