
-- Example: Categorize employees by age
SELECT first_name, 
       last_name, 
       CASE
           WHEN age <= 30 THEN 'Young'
           WHEN age BETWEEN 31 AND 50 THEN 'Middle-aged'
           WHEN age > 50 THEN 'Senior'
       END AS age_group
FROM employee_demographics;

-- Example: Calculate new salaries based on pay increase rules
SELECT first_name, 
       last_name, 
       salary,
       CASE
           WHEN salary > 45000 THEN salary + (salary * 0.05)
           WHEN salary <= 45000 THEN salary + (salary * 0.07)
       END AS new_salary
FROM employee_salary;

-- Example: Add bonus calculation based on department
SELECT first_name, 
       last_name, 
       salary,
       CASE
           WHEN salary > 45000 THEN salary + (salary * 0.05)
           WHEN salary <= 45000 THEN salary + (salary * 0.07)
       END AS new_salary,
       CASE
           WHEN dept_id = 6 THEN salary * 0.10
           ELSE 0
       END AS bonus
FROM employee_salary;