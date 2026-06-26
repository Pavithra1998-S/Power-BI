CREATE TABLE departments(
dep_id INT PRIMARY KEY,
dep_name VARCHAR(50));

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
dep_id INT REFERENCES departments(dep_id));

SELECT*FROM departments;
SELECT*FROM employees;

INSERT INTO departments
VALUES(10,'HR'),
(20,'IT'),
(30,'TRAINING'),
(40,'ACCOUNTS'),
(50,'SALES');

INSERT INTO employees
VALUES(1,'Kalai',10),
(2,'Praveen',20),
(3,'Karthi',30),
(4,'Sreenidhi',40),
(5,'Pavithra',NULL),
(6,'Madhu',20),
(7,'Anbu',NULL);

SELECT employees.emp_name,departments.dep_name,
employees.dep_id
FROM employees
INNER JOIN departments
ON employees.dep_id=departments.dep_id;

SELECT employees.emp_name,departments.dep_name,
employees.dep_id
FROM employees
LEFT JOIN departments
ON employees.dep_id=departments.dep_id;

SELECT employees.emp_name,departments.dep_name,
employees.emp_id
FROM employees
RIGHT JOIN departments
ON employees.dep_id=departments.dep_id;

SELECT employees.emp_name,departments.dep_name,
employees.dep_id
FROM employees
FULL JOIN departments
ON employees.dep_id=departments.dep_id;

SELECT employees.emp_name,departments.dep_name
FROM employees
CROSS JOIN departments;



