-- *************************************** Create database named "employee"******************************************************************
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

-- ****************************************Create Table named "Departments" *****************************************************************
CREATE TABLE DEPARTMENTS (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

desc departments;

-- **************************************** Create Table named "Location" *****************************************************************************
CREATE TABLE LOCATION (
    location_id INT PRIMARY KEY,
    location VARCHAR(30)
);

desc location;

-- ********************************************************Create Table named "Employees"***************************************************************

CREATE TABLE EMPLOYEES (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);

desc employees;

-- ***************************** Add  new column - "email "***********************************************************************************
ALTER TABLE employees ADD COLUMN email VARCHAR(100);

-- ****************************** Modify the data type of "designation" *********************************************************************
ALTER TABLE employees MODIFY COLUMN designation VARCHAR(250);

-- ******************************** Drop the "age" column *************************************************************************************
ALTER TABLE employees DROP COLUMN age;

-- ********************************** Rename the column "hire_date" to "date_of_joining" *******************************************************
ALTER TABLE employees RENAME COLUMN hire_date TO date_of_joining;

-- *************************************** Rename the "Departments" table to "Departments_Info" **************************************************************
RENAME TABLE departments TO Departments_Info;

-- ***************************************** Rename the "Location" table to "Locations" ************************************************************************
RENAME TABLE location TO Locations;

--  ***************************************** Truncate Employees table ******************************************************************************************
TRUNCATE TABLE employees;

--  ***************************************** Drop the Employees table and then the “employee” database *********************************************************
DROP TABLE employees;
DROP DATABASE employee;

-- ******************************************* Database Recreation *******************************************************************************************
-- Drop the 'employee' database if it exists and recreate it
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

-- ******************************************** Departments Table **********************************************************************
-- "department_id" uniquely identifies each department.Set up constraints on the "department_name" to avoid duplicate and null entries.

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

-- ********************************************* Location Table *************************************************************************
/*  Establish a mechanism to automatically generate unique identifiers for each location, ensuring that they are incremented sequentially.
    Implement constraints to prevent the insertion of null and duplicate locations 
*/
CREATE TABLE location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);

-- ********************************************* Employees Table ****************************************************************************
/*		⦿ Guarantee that each employee has a distinct identifier.
		⦿ Create a restriction to ensure that the employee's name is always provided.
		⦿ Limit the acceptable values for the "gender" field to only 'M' or 'F'.
		⦿ Enforce a condition to ensure that the employee's age is 18 or above.
		⦿ Automatically assign the current date to the "hire_date" field if not specified.
		⦿ Establish links between the "department_id" and "location_id" fields in the "employees" table and their respective tables.
*/
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);

desc employees;