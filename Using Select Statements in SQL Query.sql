SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name
FROM parks_and_recreation.employee_demographics; #selecting only one column

SELECT first_name, 
last_name, 
age
FROM parks_and_recreation.employee_demographics; #selecting more than using comma separated column indicators one column

# Performing Calculations in SELECT (PEMDAS)

SELECT first_name, 
last_name, 
age/10 * 20 + 10
FROM parks_and_recreation.employee_demographics;

#Using distinct to display unique values 

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;


