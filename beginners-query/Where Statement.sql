-- The WHERE clause is used to filter records (rows of data) based on specified conditions.
-- It extracts only those records that fulfill the given condition.

-- Example: To filter rows where the name is 'Alex', only rows with name = 'Alex' will return.
-- Note: This affects rows, not columns.

-- Let's explore different examples of the WHERE clause:

-- Filter rows where salary is greater than 50,000:
SELECT *
FROM employee_salary
WHERE salary > 50000;

-- Filter rows where salary is greater than or equal to 50,000:
SELECT *
FROM employee_salary
WHERE salary >= 50000;

-- Filter rows where gender is 'Female':
SELECT *
FROM employee_demographics
WHERE gender = 'Female';

-- Filter rows where gender is not 'Female':
SELECT *
FROM employee_demographics
WHERE gender != 'Female';

-- Use WHERE clause with a date value:
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- Note: The default date format in MySQL is 'YYYY-MM-DD'. Other formats will be covered in later lessons.

-- LIKE Statement:
-- The LIKE operator is used to search for a specified pattern in a column. It uses two special characters:
-- 1. % (Percent): Represents zero, one, or multiple characters.
-- 2. _ (Underscore): Represents a single character.

-- Example 1: Find names starting with 'a':
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

-- Example 2: Find names starting with 'a' followed by exactly two characters:
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';

-- Example 3: Find names starting with 'a' and followed by at least three characters:
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';

