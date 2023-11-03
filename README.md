# sql-challenge
Module 9 Challenge

## Data modeling

Five CSV files have been provided.
The departments.csv file contains two columns: a department ID made of four characters and a text description.
The titles.csv file contains two columns: a title ID made of five characters and a text description.
The salaries.csv contains two columns: an integer representing the employee ID and an integer for the corresponding salaries.
The employees.csv contains seven columns: an integer for the employee ID, five characters for the employee's title, a date for the emploee's birth date, a string for the employee's first name, a string for the emploee's last name, a single character for the emploee's gender, and a date for the emploee's hire date.
The dept_managers.csv file contains two columns and is used to link the department ID with the manager's ID. The two columns are the 4-character department ID and the integer employee's ID. It is to be noted that a department can have more than one manager, while a manager belongs to a single department.
The dept_emp.csv file contains two columns and is used to link the department ID with the employee's ID. The two columns are the integer employee's ID and the 4-character department ID. An employee can only belong to one department, but a department has multiple employees.

Using QuickDBD, an Entity Relationship Diagram (ERD) has been sketched to descride the interactions between the tables.

<insert here>

The text description behing the sketch can be found in the data folder (/data/challenge_9_ERD.txt).

## Data Engineering
The corresponding schema is exported from QuickDBD and is further modified to add the composite keys for the dept_manager_junction table and the dept_emp_junction table prior to the creation of the database tables (see /EmployeeSQL/challenge_9_ERD_schema.sql).
The CSV files are imported to the PostgreSQL via pgadmin4 in the following order: departments, salaries, titles, employees, dept_manager_junction, and dept_emp_junction.

## Data Analysis
The queries for the analysis can be found at /EmployeeSQL/challenge_9_ERD_Solutions.sql

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).



