--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary from employees as emp
join salaries as sal on emp.emp_no = sal.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select emp.last_name, emp.first_name, emp.hire_date from employees as emp
where extract (year from emp.hire_date) = 1986;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept.dept_no , dep.dept_name, dept.emp_no, emp.last_name, emp.first_name 
from dept_manager as dept 
join departments as dep 
	on dept.dept_no = dep.dept_no
join employees as emp
	on dept.emp_no = emp.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name  
from dept_emp as dept 
join departments as dep 
	on dept.dept_no = dep.dept_no
join employees as emp
	on dept.emp_no = emp.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select emp.first_name, emp.last_name, emp.sex from employees as emp
where emp.first_name = 'Hercules'
and emp.last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.