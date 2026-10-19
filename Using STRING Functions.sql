#Using string functions LENGTH, UPPER, LOWER, SUBSTRING (LEFT, RIGHT), TRIM (LTRIM, RTRIM), LOCATE, REPLACE and CONCAT

-- LENGTH finds or returns the nnumber of characters in a string
SELECT first_name, LENGTH(first_name) as first_name_length
FROM parks_and_recreation.employee_demographics
ORDER BY first_name_length
;
-- This finds the number of characters in the first name column and arranges it from the shortest to longest

-- UPPER and LOWER focuses on transform string to UPPERcase or to LOWERcase

SELECT first_name, 
UPPER(first_name) as uppercase_firstname, 
LOWER(first_name) as lowercase_firstname
FROM parks_and_recreation.employee_demographics
;

# Using substrings
-- LEFT function creates a substring from left going to the right with a given length

SELECT first_name, 
LEFT(first_name, 3) 3_characters
FROM parks_and_recreation.employee_demographics
;

-- The RIGHT function is vice versa of the LEFT one

SELECT first_name, 
RIGHT(first_name, 3) 3_characters
FROM parks_and_recreation.employee_demographics
;

-- The SUBSTRING function specifies where to start and how many characters to include in the substring
-- For example, I want to create a substring that starts from the second letter that includes 3 characters
SELECT first_name, 
SUBSTRING(first_name, 2, 3) substring_name
FROM parks_and_recreation.employee_demographics
;

# Using REPLACE
-- The replace function replaces specific character/s within the string
-- For example, I want to replace all of the letter uppercased A in the names
-- Replace is case sensitive

SELECT first_name, 
REPLACE(first_name, 'A', 'O') 
FROM parks_and_recreation.employee_demographics
;

# Using TRIM
-- TRIM removes the whitespaces from the start and at the end
-- LTRIM removes only the whitespaces from the start
-- RTRIM removes only the whitespaces from the end

-- Normal TRIM
SELECT TRIM('       sample   ')
FROM parks_and_recreation.employee_demographics
;

-- LTRIM
SELECT LTRIM('       sample            ') as sample
FROM parks_and_recreation.employee_demographics
;
 
-- RTRIM
SELECT RTRIM('            sample            ') as sample
FROM parks_and_recreation.employee_demographics
;

#Using LOCATE
-- LOCATE function finds the position of a given character/s in a string (not case sensitive)
SELECT first_name, 
LOCATE('A', first_name) people_with_a
FROM parks_and_recreation.employee_demographics
;

#Using CONCAT
-- CONCAT function is used to combine strings together. This is mostly used for combining names to create a full name column or maybe even an address
SELECT first_name, 
last_name, 
CONCAT(first_name, ' ', last_name) full_name
FROM parks_and_recreation.employee_demographics
;


