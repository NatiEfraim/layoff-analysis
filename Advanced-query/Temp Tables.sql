-- 1. Create a temporary table and manually insert data:
CREATE TEMPORARY TABLE temp_table (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    favorite_movie VARCHAR(100)
);

-- Insert data into the temporary table
INSERT INTO temp_table
VALUES ('Alex', 'Freberg', 'Lord of the Rings: The Twin Towers');

-- Query the temporary table
SELECT *
FROM temp_table;

-- 2. Create a temporary table by selecting data:
CREATE TEMPORARY TABLE salary_over_50k AS
SELECT *
FROM employee_salary
WHERE salary > 50000;

-- Query the temporary table
SELECT *
FROM salary_over_50k;