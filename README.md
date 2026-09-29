# MySQL-Assignment-1-DDL-Commands-and-Constraints
# MySQL Employee Database

## 📌 Overview

This is MySQL assignment focused on **DDL commands and database constraints**.

The main objective is to create and manage an Employee Database while understanding how different SQL commands and constraints help maintain data accuracy, consistency, and relationships between tables.

## 🎯 Objectives

In this project, I practiced:

* Creating databases and tables
* Modifying table structures
* Using different DDL commands
* Renaming tables
* Truncating tables
* Dropping tables
* Applying different constraints
* Creating relationships between tables using Foreign Keys

## 🛠️ Concepts Covered

### DDL Commands

* `CREATE`
* `ALTER`
* `RENAME`
* `TRUNCATE`
* `DROP`

### Constraints

* **Primary Key** – Ensures each employee has a unique identifier.
* **Unique** – Prevents duplicate values in selected columns.
* **Not Null** – Ensures required fields are not left empty.
* **Check** – Restricts values based on a specified condition.
* **Default** – Automatically provides a value when one is not specified.
* **Auto Increment** – Automatically generates employee IDs.
* **Foreign Key** – Establishes relationships between tables.

## 🗂️ Database Structure

The main Employee Database includes tables such as:

* `employees`
* `departments`
* `locations`

The `employees` table is connected to the `departments` and `locations` tables using Foreign Keys.

### Employee Table Constraints

| Column          | Constraint                  | Purpose                                |
| --------------- | --------------------------- | -------------------------------------- |
| `employee_id`   | Primary Key, Auto Increment | Unique employee identification         |
| `employee_name` | Not Null                    | Employee name is required              |
| `gender`        | Check                       | Allows only `M` or `F`                 |
| `age`           | Check                       | Age must be 18 or above                |
| `hire_date`     | Default                     | Automatically assigns the current date |
| `department_id` | Foreign Key                 | Links to department table              |
| `location_id`   | Foreign Key                 | Links to location table                |


## 🔧 Tools Used
* **MySQL Workbench**
