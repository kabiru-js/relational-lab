# Day 3 — Data Is Useless Until It Answers Something

## Date
July 22, 2026


I think I misunderstood SQL.

Yesterday I thought I was building a database.

I wasn’t.

I was just storing things.

Today was different.


I realized SQL is not about storing data — it’s about interrogating it.

If I can’t ask meaningful questions, the database is just dead weight.


---

## Observations

- SUM() is not interesting.
- COUNT() is not interesting.
- AVG() is not interesting.

What’s interesting is:

Why would I need them?


Example:

“Total spending” is not a function.
It’s a question.

SUM() is just how you express it.


---

## Friction

NULL is weird.

It’s not 0.
It’s not empty.

It’s “we don’t know.”

Which means:

Most SQL bugs are not syntax errors.
They are thinking errors.


---

## Pattern Matching

LIKE is deceptively simple.

Without `%`, it’s useless.

With `%`, it becomes dangerous.

You can match almost anything — which means you can also match the wrong thing.


---

## Realization

Right now my database can answer questions like:

- How much money exists?
- What happened in a time range?
- What patterns exist in descriptions?

But it cannot answer:

- Why spending is high
- Which category dominates
- How users behave

Because I don’t know how to combine tables yet.


---

## Limitation

Everything I’m doing is inside a single table.

That’s a bottleneck.

The real system is relational.

I just don’t have the tools yet (JOIN).


---

## Mistake I Keep Making

I start with SQL syntax instead of starting with a question.

That’s backwards.

Correct flow:

Question → Logic → SQL

Not:

SQL → hope it answers something


---

## Insight

A database without questions is just storage.

A database with good questions becomes a decision system.


---

## Tomorrow

I need to push this further.

Not by learning more syntax.

But by forcing the database to answer harder questions.


---

## Mental Note

Don’t learn SQL.

Use SQL to expose reality.
