-- Create a departments table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
-- SELECT * FROM departments

-- Create a employee table
CREATE TABLE employee (
	emp_no INT NOT NULL,
	emp_title VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Create a dept_emp table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
-- 	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
-- 	FOREIGN KEY (dept_no) REFERENCES dep_emp(dept_no)
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- Create a salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- Create a titles table
CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(30)	
);

-- DROP TABLE departments