DROP DATABASE IF EXISTS employeeDirectory;

-- Creating a "employeeDirectory" database
CREATE DATABASE employeeDirectory;

USE employeeDirectory;

-- Creating a table for "department" within the "employeeDirectory" database
CREATE TABLE department (
    -- The "Id", will increment created new numeric rows
    id INT UNSIGNED auto_increment PRIMARY KEY,
    -- Creates a string coloumn with "name" that cannot be null
    name VARCHAR(30) NOT NULL
);

-- Creating a table for "title" within the "employeeDirectory" database
CREATE TABLE title || role (
    -- The Id will increment the numeric rows
    id INT NOT NULL auto_increment PRIMARY KEY,
    title 
    VARCHAR(30) UNIQUE NOT NULL,
    salary 
    DECIMAL NOT NULL,
    departmentId 
    INT UNSIGNED NOT NULL,
    INDEX dep_ind (departmentId),
    -- ON DELETE CASCADE will delete the "department" down the tables that reference that specific departmentId
    FOREIGN KEY (departmentId) REFERENCES departments(id) ON DELETE CASCADE
);

-- Creating a table for "employee" within the "employeeDirectory" database
CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  last_name
   VARCHAR(30) NOT NULL,
  first_name
   VARCHAR(30) NOT NULL,
  roleId
   INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
 -- ON DELETE CASCADE will delete the "employee" down the tables that reference that specific employee or manager id 
  FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,
  managerId
   INT UNSIGNED,
  INDEX man_ind (managerId),
  FOREIGN KEY (managerId) REFERENCES employees(id) ON DELETE SET NULL
);