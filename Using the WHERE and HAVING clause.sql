# WHERE vs HAVING

-- The where clause can only be used in row level whilst the having clause can only be used after the GROUP BY on aggregated function
-- Both clauses won't when switched in scenarios

# Using where clause in group by
-- This finds the occupation that has Manager in its value
SELECT occupation
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%Manager%'
GROUP BY occupation
;

#Using the HAVING clause
-- This finds the rows whose occupation have an average salary greater than a given value
SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation
HAVING AVG(salary) > 60000
;

#Combining the WHERE and HAVING 
-- This finds the rows whose occupation contains and a manager in its value and has an average salary greater than a given value
SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%Manager'
GROUP BY occupation
HAVING AVG(salary) > 60000
;

