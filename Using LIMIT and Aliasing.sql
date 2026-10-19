#Using LIMIT and ALias

-- LIMIT Clause limits the number of rows
-- Alias (AS clause) replaces the column name of a column. Mostly used in aggregated functions


-- Limits the rows into 3
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY employee_id
LIMIT 3
;

-- Selects the 2 rows after the 3 first results (id 5-6)
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY employee_id
LIMIT 3, 2
;


-- Using aliasing in aggretated functions 
SELECT gender, AVG(age) AS average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- the default AVG(age) column name was replaced by the average_age using the AS clause

-- can also be applied without the AS clause
SELECT gender, AVG(age) average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;