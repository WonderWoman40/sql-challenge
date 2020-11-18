--DATA ANALYSIS

-- 1. Details of each employee: employee number, last name, first name, sex, and salary.
Select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary 
from Employees
Inner Join Salaries on 
Employees.emp_no = Salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
from Employees
WHERE hire_date > '1985-12-31'
AND hire_date < '1987-01-01';

--3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name.
select distinct on (dept_manager.dept_no) dept_manager.dept_no, 
		departments.dept_name, dept_manager.emp_no, employees.last_name, 
		employees.first_name
from dept_manager 
inner join departments 
on dept_manager.dept_no= departments.dept_no
inner join employees 
on dept_manager.emp_no = employees.emp_no
order by dept_manager.dept_no;

---4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select distinct on (e.emp_no) e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
order by e.emp_no;

---5. List first name, last name, and sex for employees 
---whose first name is "Hercules" and last names begin with "B."
SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

---6. List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
JOIN dept_emp ON
e.emp_no = dept_emp.emp_no
INNER JOIN Departments AS d ON
Dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales';

---7. List all employees in the Sales and Development departments, 
---including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
JOIN dept_emp ON
e.emp_no = dept_emp.emp_no
INNER JOIN Departments AS d ON
dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR 
	  dept_name = 'Development';

----8. In descending order, list the frequency count of employee last names,
---i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;









