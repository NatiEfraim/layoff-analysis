-- Subquery in WHERE clause: Find employees in the Parks and Rec Department
SELECT *
FROM employee_demographics
WHERE employee_id IN (
    SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1
);

-- Subquery in SELECT clause: Compare salaries to the average salary
SELECT first_name, 
       salary, 
       (SELECT AVG(salary) FROM employee_salary) AS avg_salary
FROM employee_salary;

-- Subquery in FROM clause: Analyze employee demographics by gender
SELECT gender, AVG(Min_age) AS avg_min_age
FROM (
    SELECT gender, MIN(age) AS Min_age, MAX(age) AS Max_age, COUNT(age) AS Count_age, AVG(age) AS Avg_age
    FROM employee_demographics
    GROUP BY gender
) AS Agg_Table
GROUP BY gender;
