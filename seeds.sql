-- Switch to the employee_tracker_1 database
USE employee_tracker_1;

-- Insert data into the department table
INSERT INTO department (name) VALUES
("Sales"), ("Engineering"), ("Finance"), ("Legal");

-- Insert data into the role table
INSERT INTO role (title, salary, department_id) VALUES
("Sales Lead", 100000, 1),
("Lead Engineer", 150000, 2),
("Software Engineer", 120000, 2),
("Accountant", 125000, 3),
("Legal Team Lead", 250000, 4);

-- Insert data into the employee table without specifying manager_id initially
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
("Josh", "Covington", 1, NULL),
("Covington", "Josh", 2, NULL),
("Kate", "Smith", 3, NULL),
("John", "Bell", 4, NULL),
("Lenny", "Hurst", 5, NULL),
("Gary", "Lear", 2, NULL),
("Tom", "Jefferson", 4, NULL),
("Danny", "Hopper", 1, NULL);

-- Update manager_id based on the inserted employee data
UPDATE employee SET manager_id = CASE
    WHEN first_name = 'Josh' AND last_name = 'Covington' THEN NULL
    WHEN first_name = 'Covington' AND last_name = 'Josh' THEN NULL
    WHEN first_name = 'Kate' AND last_name = 'Smith' THEN NULL
    WHEN first_name = 'John' AND last_name = 'Bell' THEN NULL
    WHEN first_name = 'Lenny' AND last_name = 'Hurst' THEN NULL
    WHEN first_name = 'Gary' AND last_name = 'Lear' THEN NULL
    WHEN first_name = 'Tom' AND last_name = 'Jefferson' THEN NULL
    WHEN first_name = 'Danny' AND last_name = 'Hopper' THEN NULL
END;
