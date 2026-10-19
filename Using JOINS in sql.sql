#Using joins (inner join, outer and self join)

-- Inner Join combines the tables where they have exact matches, unmatched rows will not be queried
SELECT * 
FROM parks_and_recreation.employee_salary as sal
JOIN parks_and_recreation.employee_demographics as dem
	ON sal.employee_id = dem.employee_id
;
-- the row with the employee_id 2 did not appear because table1 did not have that employee_id
#NOTE: The join clause is by default an inner join

# Using outer join left and right
-- Left means the first table, right means the second table

-- LEFT OUTER JOIN
SELECT *
FROM parks_and_recreation.employee_salary as sal # This is the left table
LEFT OUTER JOIN parks_and_recreation.employee_demographics as dem #This is the right table
	ON sal.employee_id = dem.employee_id
;

-- LEFT OUTER JOIN joins the tables using the whole first table (left table) to the second table (right table). If the right table does not have 
-- an exact match for the columns it is filled by null values, vice versa to the RIGHT OUTER JOIN

SELECT *
FROM parks_and_recreation.employee_salary as sal # This is the left table
RIGHT OUTER JOIN parks_and_recreation.employee_demographics as dem #This is the right table
	ON sal.employee_id = dem.employee_id
;

-- No Values of the LEFT Table was filled by null values because it has the exact matches of each row in the RIGHT Table
-- But if we reverse their order in the query you will find the result similar to the LEFT OUTER JOIN query

SELECT *
FROM parks_and_recreation.employee_demographics as dem # This is the left table
RIGHT OUTER JOIN parks_and_recreation.employee_salary as sal #This is the right table
	ON dem.employee_id = sal.employee_id
;

-- You see that the LEFT Table which is now the demographics table has null values in the second row because it does not have 
-- all the exact rows of the RIGHT Table

# Using full outer join (combination of left and right)

-- SELECT *
-- FROM parks_and_recreation.employee_demographics as dem # This is the left table
-- RIGHT OUTER JOIN parks_and_recreation.employee_salary as sal #This is the right table
-- 	ON dem.employee_id = sal.employee_id
-- ;

-- FULL Outer join joins both the left and right table and if the left table does not have the exact rows in the right table it is filled with null values and the same will occur 
-- for the right table if it doesn't have the exact rows in the left table

#U Using self join
-- Tables can be joined to itself in special occasions if needed (e.g assigning or pairing peoples)

SELECT dem1.first_name as pair_1, 
dem1.last_name as pair_1,
dem2.first_name as pair_2, 
dem2.last_name as pair_2
FROM parks_and_recreation.employee_demographics as dem1
JOIN parks_and_recreation.employee_demographics as dem2
	ON dem1.employee_id + 1 = dem2.employee_id
;

SELECT *
FROM parks_and_recreation.employee_demographics
;
