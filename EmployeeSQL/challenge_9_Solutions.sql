
-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
JOIN salaries ON
employees.emp_no = salaries.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
employees.last_name,
employees.first_name,
employees.hire_date
FROM employees
WHERE DATE_PART('year',hire_date)= 1986;


-- List the manager of each department along with their department number,
-- department name, employee number, last name, and first name.

SELECT 
departments.dept_no,
departments.dept_name,
employees.emp_no,
employees.last_name,
employees.first_name
FROM departments
JOIN dept_manager_junction ON
departments.dept_no = dept_manager_junction.dept_no
JOIN employees ON
dept_manager_junction.emp_no = employees.emp_no;


-- List the department number for each employee along with
-- that employee’s employee number, last name, first name, and department name.

SELECT 
departments.dept_no,
departments.dept_name,
employees.emp_no,
employees.last_name,
employees.first_name
FROM departments
JOIN dept_emp_junction ON
departments.dept_no = dept_emp_junction.dept_no
JOIN employees ON
dept_emp_junction.emp_no = employees.emp_no;


-- List first name, last name, and sex of each employee whose first name is Hercules
-- and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- List each employee in the Sales department, including their employee number,
-- last name, and first name.

SELECT 
employees.emp_no,
employees.last_name,
employees.first_name
FROM departments
JOIN dept_emp_junction ON
departments.dept_no = dept_emp_junction.dept_no
JOIN employees ON
dept_emp_junction.emp_no = employees.emp_no
WHERE departments.dept_no = 'd007';


-- List each employee in the Sales and Development departments, including their employee number,
-- last name, first name, and department name.

SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM departments
JOIN dept_emp_junction ON
departments.dept_no = dept_emp_junction.dept_no
JOIN employees ON
dept_emp_junction.emp_no = employees.emp_no
WHERE departments.dept_no = 'd007' OR departments.dept_no = 'd005';


-- List the frequency counts, in descending order, of all the employee last names
-- (that is, how many employees share each last name). 

SELECT last_name, COUNT(last_name) DESC
FROM employees
GROUP BY last_name;



