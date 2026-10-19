# Using UNION
-- UNION is used to combine select statements
-- UNION is by default DISTINCT which removes duplicate values and retains only unique values
-- UNION ALL combines all of the values even if duplicates are present

SELECT *
FROM parks_and_recreation.employee_salary
UNION
SELECT * 
FROM parks_and_recreation.employee_demographics
;

-- This combines all of the values from the two tables vertically

# Selecting specific columns only
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
UNION
SELECT first_name, last_name 
FROM parks_and_recreation.employee_demographics
;

-- This will result in only 12 rows because UNION is by default DISTINCT which will only show unique values

#Using union all to display all of the values disregarding duplicates

SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
UNION ALL
SELECT first_name, last_name 
FROM parks_and_recreation.employee_demographics
;

# You can add additional columns in the table or query to provide more data that describes or labels the data in the table
-- For example you can label those who exceed a certain age

SELECT first_name, last_name, age, 'YOUNG' as label
FROM parks_and_recreation.employee_demographics
WHERE age <= 40
;

# Using union to find a data in two table to find certain conditions
SELECT employee_id, first_name, last_name, 'YOUNG' as label
FROM parks_and_recreation.employee_demographics
WHERE age <= 40
UNION ALL
SELECT employee_id, first_name, last_name, 'High Salary' as label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
;



