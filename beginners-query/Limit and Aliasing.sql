-- Use LIMIT to specify the number of rows in the output:
SELECT *
FROM employee_demographics
LIMIT 3;

-- Combine LIMIT with ORDER BY to refine results:
SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3;

-- Use LIMIT with an offset:
SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3, 2; -- Start at row 3 and return 2 rows

-- Example: Select the third oldest person:
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- Use ALIAS to rename columns in the output:
SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender;