USE employeeDirectory;

-- Putting in information of departments on the hard coded database

INSERT INTO department (name) VALUES
('Fashion'), ('Marketing'),
 ('Production'), ('Design');

 INSERT INTO ROLE (title, salary, departmentId)
VALUES
    ('Fashion Photographer', 55000, 1),
    ('Fashion Merchandiser', 70000, 1),
    ('Data Analyst', 80000, 2),
    ('Digital Marketing Manager', 90000, 2),
    ('Supply Chain Operator Manager', 90000, 3),
    ('Fullfillment Specialist', 35000, 3),
    ('Fashion Designer', 70000, 4),
    ('Product Developer Manager', 90000, 4);

-- Putting in information of employees on the hard coded database

 INSERT INTO employee (last_name, first_name, managerId, roleId)
 VALUES
    ('Duncan', 'Johnny', NULL, 1),
    ('Romanov', 'Becca', NULL, 2),
    ('Khan', 'Kamala', NULL, 3),
    ('Smith', 'Ron', 2, 4),
    ('Zielinski', 'Kasia', 3, 5),
    ('Gonzalez', 'Paulino', NULL, 6),
    ('Morales', 'Miles', NULL, 7),
    ('Kwan', 'Mikayla', 4, 8);