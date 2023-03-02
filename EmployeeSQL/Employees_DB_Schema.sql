--Create table to import "titles"
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);
--Preview "titles"
SELECT * FROM titles

--Create table to import "departments"
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

--Preview "titles"
SELECT * FROM departments

--Create table to import "employees"
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NUll,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--Preview "employees"
SELECT * FROM employees

--Create table to import "dept_emp"
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Preview "dept_emp"
SELECT * FROM dept_emp

--Creat table to import "salaries"
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Preview "salaries"
SELECT * FROM salaries

--Create table to import "dept_manager"
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

--Preview "dept_manager"
SELECT * FROM dept_manager