# Using group by and order by

-- GROUP BY is used to perform aggregate functions (in groups)
# NOTE: The select column and the group by column should be the same for it to work


-- This query will result in grouping the unique values in the gender column which is male and female, it works like distinct but instead of removing the other values it 
-- rolls it up in order to perform aggregate functions
SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

# Performing aggregate functions
-- Finding the average age for the female and male 
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- Finding the min and max age for male and female
SELECT gender, MAX(age), MIN(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- Counts the number of female and male columns
SELECT gender, COUNT(gender)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

# USING order by to sort the table
-- ORDER By is by default in ascending or ASC.
-- This will order the table by the first_name using alphabetical order
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name
;

-- This will order the table by the first_name in reverse alphabetical order
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
;

# Choose the right order to sort the table
-- This sorts the table using the gender first then the age
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age
;

-- This will order the table using the age in asc order then the gender making the order by using the gender useless
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age, gender
;

