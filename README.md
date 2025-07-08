# 🏢 Google Internal Employee & Project Management System (PostgreSQL)

<img src="https://pngimg.com/uploads/google/google_PNG19625.png" />

> **A complete PostgreSQL project to manage employees, projects, performance, and tools — modeled after Google-like enterprise systems.**

---

## 📑 Table of Contents
- [📦 Features](#-features)
- [🧱 Schema Overview](#-schema-overview)
- [🧩 ER Diagram](#-er-diagram)
- [📘 PostgreSQL Tutorial](#-postgresql-tutorial)
- [🗂️ SQL Practice Tasks](#-sql-practice-tasks)
- [🚀 Setup Instructions](#-setup-instructions)
- [🧪 Sample Queries](#-sample-queries)
- [📄 License](#-license)

---

## 📦 Features
- ✅ 12 PostgreSQL tables with rich relationships
- ✅ 20 sample rows per table
- ✅ Real-world data (projects, salaries, tools, etc.)
- ✅ Views, triggers, functions, CTEs, and window functions
- ✅ Perfect for advanced SQL practice & interview prep

---

## 🧱 Schema Overview

- `employees`, `departments`, `salaries`
- `projects`, `employee_projects`, `performance_reviews`
- `products`, `tool_usage_logs`, `access_rights`, `audit_logs`
- `locations`, `employee_locations`

> Designed for **enterprise-level scale** and analytics.

---
## Relationship   ER

| Relationship                                              | Type        |
| --------------------------------------------------------- | ----------- |
| `departments.head_id → employees.employee_id`             | One-to-One  |
| `employees.dept_id → departments.dept_id`                 | Many-to-One |
| `employees.salary_id → salaries.salary_id`                | Many-to-One |
| `employee_projects.employee_id → employees.employee_id`   | Many-to-One |
| `employee_projects.project_id → projects.project_id`      | Many-to-One |
| `performance_reviews.employee_id → employees.employee_id` | Many-to-One |
| `performance_reviews.reviewer_id → employees.employee_id` | Many-to-One |
| `products.dept_id → departments.dept_id`                  | Many-to-One |
| `products.product_manager_id → employees.employee_id`     | Many-to-One |
| `employee_locations.employee_id → employees.employee_id`  | Many-to-One |
| `employee_locations.location_id → locations.location_id`  | Many-to-One |
| `tool_usage_logs.employee_id → employees.employee_id`     | Many-to-One |
| `access_rights.employee_id → employees.employee_id`       | Many-to-One |
| `audit_logs.employee_id → employees.employee_id`          | Many-to-One |



## Complex JOINs example pg-admin4




![Screenshot 2025-07-08 130939](https://github.com/user-attachments/assets/c2ba0745-e9a4-4dd1-a3ae-bcdc9f452fc6)





---

## 🧩 ER Diagram

🖼️ ER diagram available in:

- Visual layout included in documentation
![, 2025, 05_15_15 PM](https://github.com/user-attachments/assets/984ef62a-dff0-4da0-9121-fb4031f0dc10)


---

## 📘 PostgreSQL Tutorial

### 🔰 Getting Started
```bash
sudo apt install postgresql
sudo -u postgres psql
