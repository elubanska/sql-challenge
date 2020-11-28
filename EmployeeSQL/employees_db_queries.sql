--List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary from employees as emp
join salaries as sal on emp.emp_no = sal.emp_no;

