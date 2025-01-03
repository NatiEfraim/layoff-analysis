-- Use WHERE to filter rows based on column values:
-- Example: Group by gender and calculate average age:
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

-- Attempt to filter aggregated data with WHERE (this fails due to order of operations):
SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender;

-- Use HAVING to filter aggregated results:
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

-- Alias aggregated columns for readability:
SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender
HAVING Avg_age > 40;