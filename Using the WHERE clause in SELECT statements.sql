#Using the where clause in Select Statements

SELECT * 
FROM parks_and_recreation.employee_salary;

# Using where to find a specific user
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Ron'
;

# Using comparison operators <, >, <=, >=
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary > 60000
;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 60000
;

# Using logical operators AND, OR and NOT 
-- This will result in rows and columns that meets both the conditions
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary < 60000 AND occupation = "Office Manager"
;

 -- This will result in columns and rows that meets either one of the two conditions 
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary > 60000 OR employee_id > 5
;

-- This will remove those rows that has Mark in their first_name column
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE NOT first_name = 'Mark'
;

# Using the LIKE clause

-- % (percent) for any string of characters
-- _ (underscore) for any character
-- e.g

-- This query will return those values where the first_name starts with C and any string characters after it
-- This will show Chris and Craig
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'C%'
;

-- Whereas this query will result in values where the first name starts with A and (count the underscores) 3 characters after it 
-- This will show Andy whose name starts with A and meets the other 3 characters ndy
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'A___'
;

# Combining % and _ in the LIKE clause

-- This query will result in values whose last_name starts with any character followed by the character a and any string of characters after it
-- This will show only Haverford
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE last_name LIKE '_a%'
;

# Using LIKE for date data type
-- This will result in rows where the birth date is in the year 1989
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%'
;

