-- Inner Join: Combine rows with matching `employee_id` in both tables
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- Left Join: Include all rows from `employee_salary` and matches from `employee_demographics`
SELECT *
FROM employee_salary sal
LEFT JOIN employee_demographics dem
ON sal.employee_id = dem.employee_id;

-- Right Join: Include all rows from `employee_demographics` and matches from `employee_salary`
SELECT *
FROM employee_salary sal
RIGHT JOIN employee_demographics dem
ON sal.employee_id = dem.employee_id;

-- Self Join: Match employees for a secret Santa by pairing consecutive IDs
SELECT emp1.employee_id AS santa_id, emp1.first_name AS santa_name, emp2.employee_id AS recipient_id, emp2.first_name AS recipient_name
FROM employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id + 1 = emp2.employee_id;

-- Join Multiple Tables: Combine `employee_demographics`, `employee_salary`, and `parks_departments`
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
ON sal.dept_id = dept.department_id;
