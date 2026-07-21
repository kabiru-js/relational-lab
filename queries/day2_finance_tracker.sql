-- ==========================================
-- Day 2: Finance Tracker Database
-- Concepts Practiced:
-- CREATE TABLE
-- INSERT INTO
-- ==========================================


-- Create Users Table

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    created_at DATE
);


-- Create Categories Table

CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);


-- Create Transactions Table

CREATE TABLE transactions (
    id INT PRIMARY KEY,
    user_id INT,
    category_id INT,
    amount DECIMAL,
    type VARCHAR(50),
    description VARCHAR(255),
    created_at DATE
);



-- Insert Users

INSERT INTO users (id, name, email, created_at)
VALUES
(1, 'Kabiru', 'kabiru@example.com', '2026-07-19'),
(2, 'Amina', 'amina@example.com', '2026-07-20'),
(3, 'Yusuf', 'yusuf@example.com', '2026-07-21');



-- Insert Categories

INSERT INTO categories (id, name)
VALUES
(1, 'Food'),
(2, 'Transport'),
(3, 'Bills'),
(4, 'Entertainment'),
(5, 'Education'),
(6, 'Health');



-- Insert Transactions

INSERT INTO transactions 
(id, user_id, category_id, amount, type, description, created_at)
VALUES
(1, 1, 1, 3500, 'expense', 'Lunch at restaurant', '2026-07-19'),
(2, 1, 2, 5000, 'expense', 'Fuel for car', '2026-07-19'),
(3, 1, 5, 15000, 'expense', 'Online programming course', '2026-07-20'),
(4, 1, 3, 25000, 'expense', 'Internet subscription', '2026-07-20'),
(5, 1, 4, 7000, 'expense', 'Cinema and snacks', '2026-07-21'),
(6, 2, 1, 4500, 'expense', 'Groceries', '2026-07-19'),
(7, 2, 2, 3000, 'expense', 'Bus transport', '2026-07-20'),
(8, 2, 6, 8000, 'expense', 'Medicine', '2026-07-21'),
(9, 3, 1, 6000, 'expense', 'Dinner', '2026-07-19'),
(10, 3, 3, 12000, 'expense', 'Electricity bill', '2026-07-20'),
(11, 3, 5, 20000, 'expense', 'Books and study materials', '2026-07-21'),
(12, 1, 1, 50000, 'income', 'Freelance payment', '2026-07-21'),
(13, 2, 1, 80000, 'income', 'Salary payment', '2026-07-20');
