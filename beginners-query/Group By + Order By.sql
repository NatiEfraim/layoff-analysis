-- GROUP BY groups rows with the same values in specified columns and applies aggregate functions.

-- Example: Group rows by gender:
SELECT gender
FROM employee_demographics
GROUP BY gender;

-- Group by occupation:
SELECT occupation
FROM employee_salary
GROUP BY occupation;

-- Group by multiple columns (occupation and salary):
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

-- Perform aggregate functions with GROUP BY:
SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender;

SELECT gender, MIN(age) AS Min_age, MAX(age) AS Max_age, COUNT(age) AS Count_age, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender;

-- ORDER BY sorts the result set in ascending (default) or descending order.

-- Order rows by first_name (ascending):
SELECT *
FROM employee_demographics
ORDER BY first_name;

-- Order rows by first_name (descending):
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

-- Order by multiple columns (gender and age):
SELECT *
FROM employee_demographics
ORDER BY gender, age;

-- Order by multiple columns (descending):
SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;

-- Order by column positions (5 = gender, 4 = age):
SELECT *
FROM employee_demographics
ORDER BY 5 DESC, 4 DESC;
