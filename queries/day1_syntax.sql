select * from university
-- used in extracting all the data from university 

-- Day 1: Query Challenges
-- Rule: Think first. Don’t rush to write.

--------------------------------------------------
-- 1. Basic Retrieval
--------------------------------------------------

-- Q1: What does your customer data actually look like?
-- (Pull everything, no assumptions)

select * from customers
--------------------------------------------------
-- 2. Selective Thinking
--------------------------------------------------

-- Q2: If you only cared about who your customers are and where they’re from,
-- what minimal data would you look at?
select name and country from customers

--------------------------------------------------
-- 3. Filtering Reality
--------------------------------------------------

-- Q3: Imagine you're only expanding into Germany.
-- Which customers matter to you?

select from customers 
where country ='germany';
--------------------------------------------------
-- 4. Precision Filtering
--------------------------------------------------

-- Q4: You want customers ONLY from Berlin.
-- Not Germany. Not nearby. Exactly Berlin.

select from customers 
where country ='berlin' and not = 'germnay'
--------------------------------------------------
-- 5. Sorting for Insight
--------------------------------------------------

-- Q5: You want to scan customers alphabetically by name.
-- How do you force order onto chaos?

select * from customers 
orderby customername
--------------------------------------------------
-- 6. Combining Conditions (AND)
--------------------------------------------------

-- Q6: You're targeting a very specific market:
-- Customers in Germany AND specifically in Berlin.
-- Who fits BOTH conditions?
select * from customers where (country= "germany' and 'berlin')

--------------------------------------------------
-- 7. Flexible Matching (OR)
--------------------------------------------------

-- Q7: You’re okay with multiple markets:
-- Either Berlin OR London customers.
-- Who qualifies?

select* from customers where country = 'berlin' or 'germany'
--------------------------------------------------
-- 8. Exclusion Thinking (NOT)
--------------------------------------------------

-- Q8: You want everyone EXCEPT customers from Germany.
-- Who’s left?

select * from customers where country is not 'germany'
--------------------------------------------------
-- 9. Pattern Recognition (LIKE)
--------------------------------------------------

-- Q9: You’re analyzing branding patterns.
-- Which customers have names that start with "A"?

select* from customers where name = 'a%'
--------------------------------------------------
-- 10. Pattern + Filter Combo
--------------------------------------------------

-- Q10: Among customers in Spain,
-- who has names starting with "G" or "R"?


--------------------------------------------------
-- 11. Logical Trap (Parentheses Test)
--------------------------------------------------

-- Q11: You want:
-- Spanish customers whose names start with G or R
-- BUT you must avoid accidentally including non-Spanish customers.
-- How do you control the logic?


--------------------------------------------------
-- 12. Real Thinking Scenario
--------------------------------------------------

-- Q12: You're launching a campaign:
-- Target customers in either:
-- - Norway
-- - OR Berlin
-- - OR anyone whose name starts with "G"
-- Who are your targets?


--------------------------------------------------
-- 13. Ordering with Intent
--------------------------------------------------

-- Q13: You want to see customers from Z → A (reverse alphabetical).
-- How do you flip the default behavior?


--------------------------------------------------
-- 14. Multi-Condition Stress Test
--------------------------------------------------

-- Q14: Find customers who:
-- - Are NOT in Germany
-- - AND their name starts with "B"
-- What does that even return?


--------------------------------------------------
-- 15. Thinking Like a Builder
--------------------------------------------------

-- Q15: If your database was messy,
-- how would you quickly scan ONLY unique countries?


  where i'm failing : 
  🔍 Q2 — Select specific columns

❌ Your version:

select name and country from customers

✅ Correct:

SELECT CustomerName, Country FROM Customers;

🧠 Why:

SQL uses commas, not AND, to select columns
AND is only for conditions in WHERE
🔍 Q3 — Germany filter

❌ Your version:

select from customers 
where country ='germany';

✅ Correct:

SELECT * FROM Customers
WHERE Country = 'Germany';

🧠 Why:

You must specify columns after SELECT
SQL is often case-insensitive, but consistency matters
🔍 Q4 — Berlin only

❌ Your version:

select from customers 
where country ='berlin' and not = 'germnay'

✅ Correct:

SELECT * FROM Customers
WHERE City = 'Berlin';

🧠 Why:

Berlin is a city, not a country
You don’t need NOT Germany if you already specify Berlin
🔍 Q5 — Ordering

❌ Your version:

orderby customername

✅ Correct:

SELECT * FROM Customers
ORDER BY CustomerName;

🧠 Why:

Must include ORDER BY as two words
Always attach it to a full query
🔍 Q6 — AND condition

❌ Your version:

select * from customers where (country= "germany' and 'berlin')

✅ Correct:

SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

🧠 Why:

Each condition must be complete
'berlin' alone means nothing without a column
🔍 Q7 — OR condition

❌ Your version:

select* from customers where country = 'berlin' or 'germany'

✅ Correct:

SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'London';

🧠 Why:

Every OR needs a full condition
'germany' alone is just a string, not logic
🔍 Q8 — NOT

❌ Your version:

where country is not 'germany'

✅ Correct:

SELECT * FROM Customers
WHERE Country <> 'Germany';

🧠 Why:

IS NOT is for NULL, not normal values
Use <> for “not equal”
🔍 Q9 — LIKE

❌ Your version:

where name = 'a%'

✅ Correct:

SELECT * FROM Customers
WHERE CustomerName LIKE 'A%';

🧠 Why:

LIKE is required for patterns
= only matches exact values

