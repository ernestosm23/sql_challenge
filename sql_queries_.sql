-- Data Analysis
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.sex, salaries.salary
FROM employee
LEFT JOIN salaries
ON employee.emp_no = salaries.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employee.first_name, employee.last_name, employee.hire_date
FROM employee
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01'
ORDER BY hire_date;


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT emp_title
FROM employee
WHERE emp_title LIKE 'm0001'

SELECT departments.dept_no, departments.dept_name, employee.emp_no, employee.last_name, employee.first_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employee
ON dept_manager.emp_no = employee.emp_no;

-- List the department number for each employee along with that employeeâ€™s employee number, last name, first name, and department name.
SELECT departments.dept_no, employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employee
ON dept_manager.emp_no = employee.emp_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employee
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';


-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT departments.dept_name, employee.emp_no, employee.last_name, employee.first_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employee
ON dept_manager.emp_no = employee.emp_no
WHERE departments.dept_name LIKE 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employee
ON dept_manager.emp_no = employee.emp_no
WHERE departments.dept_name IN ('Sales', 'Development');


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name)
FROM employee
GROUP BY last_name
ORDER BY last_name DESC;

