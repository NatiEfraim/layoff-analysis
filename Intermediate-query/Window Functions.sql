-- Compare group by vs window function:
SELECT gender, ROUND(AVG(salary), 1) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender;
SELECT dem.employee_id, dem.first_name, gender, salary,
       AVG(salary) OVER() AS overall_avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;
-- Partition by gender:
SELECT dem.employee_id, dem.first_name, gender, salary,
       AVG(salary) OVER(PARTITION BY gender) AS avg_salary_by_gender
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;
-- Rolling total by gender and employee_id:
SELECT dem.employee_id, dem.first_name, gender, salary,
       SUM(salary) OVER(PARTITION BY gender ORDER BY employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;
-- Row numbers, rank, and dense rank:
SELECT dem.employee_id, dem.first_name, gender, salary,
       ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
       RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank,
       DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;