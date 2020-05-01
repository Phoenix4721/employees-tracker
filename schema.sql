DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE employees(
id INT NOT NULL AUTO_INCREMENT,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
FOREIGN KEY (role_id) REFERENCES roles(id) ,
FOREIGN KEY (manager_id) REFERENCES employees(id),
PRIMARY KEY (id)
);

CREATE TABLE departments(
id int NOT NULL AUTO_INCREMENT,
depname VARCHAR(30) NOT NULL,

PRIMARY KEY (id)


);

CREATE TABLE roles(
id int NOT NULL AUTO_INCREMENT,
title VARCHAR(30) NOT NULL,
salary decimal NOT NULL,
FOREIGN KEY (department_id) REFERENCES departments(id),
PRIMARY KEY (id)

);

INSERT INTO employees (firstname, lastname, roleId, manager_id) VALUES ('Jonathyn', 'Major', 4, null);
INSERT INTO employees (firstname, lastname, roleId, manager_id) VALUES ('Austin', 'Taylor', 6, null);
INSERT INTO employees (firstname, lastname, roleId, manager_id) VALUES ('Phil', 'Tomston', 8, null);
INSERT INTO employees (firstname, lastname, roleId, manager_id) VALUES ('Jack', 'Frazer', 1, 1);



INSERT INTO departments (depname) VALUES ('Engineering');
INSERT INTO departments (depname) VALUES ('Marketing');
INSERT INTO departments (depname) VALUES ('Administration');
INSERT INTO departments (depname) VALUES ('Manufacturing');



INSERT INTO roles (title, salary, department_id) VALUES ('Stress Engineer', 70000.00, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('Materials Engineer', 72500.00, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('Software Engineer', 120000.00, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('Lead Engineer', 110000.00, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('Tooling Engineer', 72500.00, 4);
INSERT INTO roles (title, salary, department_id) VALUES ('Administrative Assistant', 55000.00, 3);
INSERT INTO roles (title, salary, department_id) VALUES ('Marketing Director', 85000.00, 2);
INSERT INTO roles (title, salary, department_id) VALUES ('Marketing Intern', 25000.00, 2);
