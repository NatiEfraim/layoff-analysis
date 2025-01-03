-- Example 1: Basic CTE to calculate aggregate salary data by gender
WITH CTE_Example AS (SELECT gender, SUM(salary) AS total_salary, MIN(salary) AS min_salary, MAX(salary) AS max_salary, 
           COUNT(salary) AS count_salary, 
           AVG(salary) AS avg_salary
    FROM employee_demographics dem
    JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
    GROUP BY gender
)
SELECT *
FROM CTE_Example;
-- Example 2: Use CTE for further calculations
WITH CTE_Example AS (SELECT gender, SUM(salary) AS total_salary, COUNT(salary) AS count_salaryFROM employee_demographics dem
    JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
    GROUP BY gender
)
SELECT gender, ROUND(total_salary / count_salary, 2) AS avg_salary FROM CTE_Example;
-- Example 3: Multiple CTEs and joining them
WITH CTE_Example1 AS (
    SELECT employee_id, gender, birth_date
    FROM employee_demographics
    WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS (
    SELECT employee_id, salary
    FROM parks_and_recreation.employee_salary
    WHERE salary >= 50000
)
SELECT *
FROM CTE_Example1 cte1
LEFT JOIN CTE_Example2 cte2
ON cte1.employee_id = cte2.employee_id;
