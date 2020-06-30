-- Table Employee 

--NUMBER 1 - List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';


--NUMBER 2 - Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;


--NUMBER 3 - Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;

--NUMBER 4 - Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
-- You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2;

--NUMBER 5 - Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';