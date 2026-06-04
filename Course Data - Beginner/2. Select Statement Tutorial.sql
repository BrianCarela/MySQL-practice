-- * means "all"
SELECT *
FROM Parks_and_Recreation.employee_demographics;

-- you can do age + 10 as it's own column
-- I remembered keyword AS to rename the column
SELECT first_name, 
last_name, 
birth_date,
age,
age + 10 AS final_season_age
FROM Parks_and_Recreation.employee_demographics;

-- DISTINCT makes it such that no duplicates of a value in a given column will be returned
SELECT DISTINCT first_name, gender
FROM Parks_and_Recreation.employee_demographics;
