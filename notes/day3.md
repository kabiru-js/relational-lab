# Day 3 — Querying for Insight

## Date
July 22, 2026

---

## 🎯 Objective

Move from storing data to extracting meaning from it.

Use SQL to answer real questions about a financial system.

---

## 🧠 What I Learned

### Aggregate Functions

- SUM() → total values
- AVG() → average value
- COUNT() → number of non-null values
- MIN() / MAX() → smallest and largest values

Key insight:
Aggregate functions ignore NULL values because NULL = unknown.


---

### LIKE & Wildcards

- % → any number of characters
- _ → single character

Examples:

- 'a%' → starts with "a"
- '%a%' → contains "a"

Key insight:
LIKE is only powerful when combined with wildcards.


---

### IN

Used to filter multiple possible values.

Instead of:

value = x OR value = y

Use:

value IN (x, y)


---

### BETWEEN

Used for ranges.

Examples:

- numbers → amount BETWEEN 1000 AND 5000
- dates → created_at BETWEEN '2026-07-19' AND '2026-07-21'

Key insight:
BETWEEN is inclusive.


---

### Aliases

Used to rename output columns.

Makes results easier to read.

---

## 🧠 Database Thinking Upgrade

Before:
SQL = retrieving rows

Now:
SQL = answering questions about systems

---

## ⚙️ What I Built

Used the finance tracker database to:

- Measure spending
- Identify patterns
- Filter meaningful subsets of data

---

## 🐛 Mistakes / Confusions

- Confusing COUNT(*) vs COUNT(column)
- Thinking LIKE works without wildcards
- Expecting NULL to behave like normal values
- Mixing up "data existence" vs "data value"

---

## 💡 Key Insight

SQL is not about writing queries.

It is about asking better questions.

---

## ❌ What I Can’t Do Yet

- GROUP BY
- JOIN (combining tables)
- Subqueries
- Advanced filtering logic

---

## 🚀 Next Step (Day 4 Challenge)

Write SQL queries that answer these questions:

1. What is the total amount of money spent?
2. What is the total income?
3. What is the largest single expense?
4. What is the average transaction amount?
5. How many transactions exist?
6. Show all transactions containing the word "payment"
7. Show transactions between two dates
8. Show transactions where amount is between 5000 and 20000
9. Show transactions for multiple categories using IN
10. Show all names that contain the letter "a"

---

## 🧠 Mindset

“Don’t query tables. Interrogate systems.”
