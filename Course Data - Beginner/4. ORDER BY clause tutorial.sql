-- Group By

-- the SELECT and GROUP BY need to match, unless you're using some sort of aggregate function such as AVG
SELECT gender
FROM employee_demographics
GROUP BY gender
;

-- average female age is almost 39, male about 41
-- note that the age values are ascending when doing down
SELECT gender, AVG(age) -- remember that selecting specified columns only returns those
FROM employee_demographics
GROUP BY gender
;

-- note that there are 2 Office Managers, different salary though. 
-- If the salary was the same, they would group as 1
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- more aggregate functions. 
-- COUNT is showing how many ages per gender, because we're grouping on gender
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
-- string default, alphabetical order
SELECT *
FROM employee_demographics
ORDER BY first_name
;

-- date default, chronological order
SELECT *
FROM employee_demographics
ORDER BY birth_date
;

-- number default, lowest to highest order
SELECT *
FROM employee_demographics
ORDER BY age
;

-- DESC reverses the order
SELECT *
FROM employee_demographics
ORDER BY first_name DESC 
;

-- 2 orders organizes by first column, then 2nd column within those rows
-- apply DESC per column
SELECT *
FROM employee_demographics
ORDER BY gender DESC, age
;

-- note that because no ages are repeated, it seems gender isn't ordered
-- the first ordered column must have repeated values for the second one to truly apply
SELECT *
FROM employee_demographics
ORDER BY age, gender
;

-- RARE SITUATION, but good to know
-- the numbers are the column position. 5th column is gender, 4th is age
SELECT *
FROM employee_demographics
ORDER BY 5, 4
;