-- Simple stored procedure to fetch salaries >= 60000
DELIMITER $$ CREATE PROCEDURE large_salaries() BEGIN SELECT * FROM employee_salary WHERE salary >= 60000; END $$ DELIMITER ;
-- Call the stored procedure
CALL large_salaries();
-- Stored procedure with multiple queries
DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
    SELECT *
    FROM employee_salary
    WHERE salary >= 60000;

    SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
END $$
DELIMITER ;
-- Call the procedure
CALL large_salaries2();
-- Stored procedure with parameter
DELIMITER $$
CREATE PROCEDURE large_salaries_with_param(employee_id_param INT)
BEGIN
    SELECT *
    FROM employee_salary
    WHERE salary >= 60000
      AND employee_id = employee_id_param;
END $$
DELIMITER ;

-- Call the procedure with parameter
CALL large_salaries_with_param(1);
