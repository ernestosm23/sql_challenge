-- Create a departments table
CREATE TABLE departments (
	dept_no VARCHAR(30),
	dept_name VARCHAR(30)
);


-- Create a dept_emp table
CREATE TABLE dept_emp (
	emp_no INT,
	dep_no VARCHAR(30)
);

-- Create a dept_manager table
CREATE TABLE dept_manager (
	dep_no VARCHAR(10),
	emp_no INT	
);

-- Create a employee table
CREATE TABLE employee (
	emp_no INT,
	emp_title VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR (1),
	hire_date DATE
);

-- Create a salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT	
);

-- Create a titles table
CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(30)	
);

-- DROP TABLE departments