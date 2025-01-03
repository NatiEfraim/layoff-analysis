-- The SELECT statement is used to specify the columns to display in your query output. This section provides an introduction to its functionality.

-- Select all columns from a table:
SELECT *
FROM parks_and_recreation.employee_demographics;

-- Select a specific column:
SELECT first_name
FROM employee_demographics;

-- Select multiple columns (separated by commas):
SELECT first_name, last_name
FROM employee_demographics;

-- Select columns in any order:
SELECT last_name, first_name, gender, age
FROM employee_demographics;

-- Format query for better readability:
SELECT last_name,
first_name,
gender,
age
FROM employee_demographics;

-- Perform calculations in the SELECT statement:
SELECT first_name,
last_name,
total_money_spent,
total_money_spent + 100 AS adjusted_spending
FROM customers;

-- Mathematical operations follow PEMDAS (order of operations):
-- Example 1:
SELECT first_name,
last_name,
salary,
salary + 100 AS adjusted_salary
FROM employee_salary;

-- Example 2:
SELECT first_name,
last_name,
salary,
(salary + 100) * 10 AS total_adjusted_salary
FROM employee_salary;

-- Use DISTINCT to return unique values:
-- Example without DISTINCT:
SELECT department_id
FROM employee_salary;

-- Example with DISTINCT:
SELECT DISTINCT department_id
FROM employee_salary;