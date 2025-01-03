-- Create a trigger to insert data into employee_demographics after a new row is added to employee_salary
DELIMITER $$
CREATE TRIGGER employee_insert_trigger
AFTER INSERT ON employee_salary
FOR EACH ROW
BEGIN
    INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;
-- Test the trigger by inserting a row into employee_salary
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);
-- Remove the test row
DELETE FROM employee_salary WHERE employee_id = 13;

-- Create an event to delete employees over age 60 every 30 seconds
DROP EVENT IF EXISTS delete_retirees;
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO BEGIN
    DELETE FROM parks_and_recreation.employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;