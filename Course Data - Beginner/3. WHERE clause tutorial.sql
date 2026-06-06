-- WHERE clause
-- finding data based on it's value
SELECT *
FROM employee_salary
WHERE first_name = "Leslie";

-- Tom & Jerry (lol) make exactly 50k and don't show up with > so you need >=
SELECT *
FROM employee_salary
WHERE salary >= 50000;


SELECT *
FROM employee_demographics
WHERE gender = 'Female';

-- when using > on dates, you're saying "anything AFTER this date", or "before" with <
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT -- Logical Operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'
;

-- OR only needs one condition to be true, Jerry is too old but he's male
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male'
;

-- Leslie shows up here, old but not male
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

-- PEMDAS in effect, each condition in () must evaluate first
-- both Leslie and Jerry show up
SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

-- LIKE statements - if you need a similar value to match, or don't know the exact thing you're looking for
-- % means "anything in this spot", so LIKE 'Jer%' means "begins with 'Jer' but ends with anything
-- _ means "exact", so LIKE 'a__' only returns Ann because 2 underscores is 2 characters
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A%';

-- Tom and Donna show here because it starts with a letter, followed by 'o' and ends in anything
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%o%';

-- 2 underscores returns Ann
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A__';

-- also works with dates. anyone born in 1980's shows up
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '198%';