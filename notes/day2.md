# Day 2 — Building a Finance Tracker Database

## Date
July 21, 2026

---

## 🎯 Objective

Move from writing individual SQL statements to designing a small relational database system.

Build a finance tracker database that models:

- Users
- Spending categories
- Financial transactions

---

## 🧠 What I Built

Created a relational database with three main tables:

### Users

Stores information about people using the system.

Fields:
- id
- name
- email
- created_at


### Categories

Stores transaction categories.

Examples:
- Food
- Transport
- Bills
- Entertainment
- Education
- Health


### Transactions

Stores financial events.

Fields:
- id
- user_id
- category_id
- amount
- type
- description
- created_at


---

## 🏗️ Database Design Thinking

A transaction does not store the category name directly.

Instead:

User
↓
creates
↓
Transaction
↓
belongs to
↓
Category


This prevents duplicate data and keeps the database organized.

---

## ⚙️ SQL Concepts Practiced

### CREATE TABLE

Used to define the structure of the database.

Learned:

- Tables require columns
- Every column requires a data type
- Primary keys identify unique records


### INSERT INTO

Used to add data into tables.

Learned:

- Values must match column order
- Text values require quotes
- Multiple rows are separated by commas


---

## 🐛 Mistakes / Bugs Encountered

### Mistake 1: Creating tables without columns

Incorrect:

CREATE TABLE users;


Fixed by defining:

- column names
- data types


---

### Mistake 2: Inserting transaction data into categories table

Problem:

I confused the relationship between categories and transactions.

Learning:

Categories describe transactions.

Transactions reference categories using category_id.


---

### Mistake 3: INSERT syntax

Problems:

- Missing column definitions
- Incorrect parentheses
- Incorrect semicolon placement


---

## 📊 Sample Data Created

Created:

- 3 users
- 6 categories
- 13 transactions


The database now represents a small financial system.

---

## 💡 Key Insight

A database is not just storing information.

It is a model of reality.

The hardest part is not writing SQL syntax.

The hardest part is deciding:

"What should exist as a table?"

"What relationship exists between things?"

---

## ❌ What I Cannot Do Yet

Still need to learn:

- SELECT across multiple tables
- Aggregations
- GROUP BY
- JOIN operations
- Subqueries


---

## 🚀 Next Step

Use SQL queries to answer questions about the finance tracker:

Examples:

- What is the total spending?
- Which category has the highest spending?
- Which user spends the most?
- What transactions happened recently?


---

## 🧠 Engineering Mindset

Don't just learn SQL.

Build systems that require SQL.
