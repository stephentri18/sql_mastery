# Using case statements
-- Case Statements are like if else, you can add multiple conditions to a case to label each row accordingly
-- We can use it to say applying different bonuses per employee, identifying age difference and many more


-- I used the case statements here to identify which of the employees are highly paid or just moderately paid based on a given condition
SELECT sal.first_name, 
sal.last_name, 
sal.salary, 
dept.department_id, 
dept.department_name,
CASE
	WHEN sal.salary > 50000 THEN 'Highly Paid Employee'
    WHEN sal.salary <= 50000 THEN 'Moderately Paid Employee'
END as employee_type
FROM parks_and_recreation.employee_salary as sal
JOIN parks_and_recreation.parks_departments as dept
	ON sal.dept_id = dept.department_id
ORDER BY dept.department_id
;

-- In this query we will apply salary increase and bonuses with certain conditions
-- if the salary > 50000 = 10% increase
-- salary <= 50000 15% increase
-- department_name = Public Works bonus = 5%

SELECT sal.first_name, 
sal.last_name, 
sal.salary, 
dept.department_id, 
dept.department_name,
CASE
	WHEN sal.salary > 50000 THEN sal.salary * 1.1
    WHEN sal.salary <= 50000 THEN sal.salary * 1.15
END as salary_increase,
CASE 
	WHEN dept.department_id = 3 THEN sal.salary * .5
END as bonus
FROM parks_and_recreation.employee_salary as sal
JOIN parks_and_recreation.parks_departments as dept
	ON sal.dept_id = dept.department_id
ORDER BY dept.department_id
;