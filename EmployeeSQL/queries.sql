SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees, salaries
WHERE employees.emp_no = salaries.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986/01/01' and '1986/12/31';


SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name 
FROM dept_manager, departments, employees
WHERE employees.emp_no = dept_manager.emp_no AND dept_manager.dept_no = departments.dept_no;


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp, departments, employees
WHERE employees.emp_no = dept_emp.emp_no AND departments.dept_no = dept_emp.dept_no;


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp, departments, employees
WHERE employees.emp_no = dept_emp.emp_no AND departments.dept_no = dept_emp.dept_no AND departments.dept_name = 'Sales';


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp, departments, employees
WHERE employees.emp_no = dept_emp.emp_no AND departments.dept_no = dept_emp.dept_no AND (departments.dept_name = 'Sales' OR departments.dept_name = 'Development');


SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC


