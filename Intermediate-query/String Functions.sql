-- Intermediate - String Functions

-- Length of strings:
SELECT first_name, LENGTH(first_name) AS name_length
FROM employee_demographics;

-- Convert to uppercase:
SELECT first_name, UPPER(first_name) AS name_uppercase
FROM employee_demographics;

-- Convert to lowercase:
SELECT first_name, LOWER(first_name) AS name_lowercase
FROM employee_demographics;

-- Trim whitespace:
SELECT TRIM('   sky   ') AS trimmed;
SELECT LTRIM('   I love SQL') AS left_trimmed;
SELECT RTRIM('I love SQL   ') AS right_trimmed;

-- Extract characters from strings:
SELECT first_name, LEFT(first_name, 4) AS left_chars,
                   RIGHT(first_name, 4) AS right_chars
FROM employee_demographics;

-- Substring (extract characters from specific position):
SELECT SUBSTRING('Alexander', 2, 3) AS substring_example;
SELECT birth_date, SUBSTRING(birth_date, 1, 4) AS birth_year
FROM employee_demographics;

-- Replace characters in a string:
SELECT REPLACE(first_name, 'a', 'z') AS replaced_name
FROM employee_demographics;

-- Locate a character's position in a string:
SELECT first_name, LOCATE('a', first_name) AS position
FROM employee_demographics;

-- Concatenate strings:
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;
