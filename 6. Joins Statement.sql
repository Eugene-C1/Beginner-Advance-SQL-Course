-- Joins
SELECT *
FROM
	parks_and_recreation.employee_demographics
;

SELECT *
FROM
	parks_and_recreation.employee_salary
;

-- INNER JOIN
SELECT a.employee_id, age, occupation
FROM
	parks_and_recreation.employee_demographics AS a
INNER JOIN
	parks_and_recreation.employee_salary AS b
ON 
	a.employee_id = b.employee_id
;

-- OUTER JOIN

SELECT *
FROM
	parks_and_recreation.employee_demographics AS a
RIGHT JOIN
	parks_and_recreation.employee_salary AS b
ON 
	a.employee_id = b.employee_id
;

-- SELF JOIN

SELECT 
	emp1.employee_id AS emp_santa,
	emp1.first_name AS first_name_santa,
    emp1.last_name AS last_name_santa,
    emp2.employee_id AS emp_name,
	emp2.first_name AS first_name_emp,
    emp2.last_name AS last_name_emp
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables

SELECT *
FROM
	parks_and_recreation.employee_demographics AS dem
INNER JOIN
	parks_and_recreation.employee_salary AS sal
	ON dem.employee_id =sal.employee_id
INNER JOIN
	parks_and_recreation.parks_departments AS pd
    ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_and_recreation.parks_departments



