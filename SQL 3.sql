SELECT * FROM employees
WHERE gender = 'M'; 
#GenderMALE

SELECT * FROM employees
WHERE first_name = 'Elvis'; 
#Name Elvis

SELECT DISTINCT title FROM titles;
#UniqTitle

SELECT first_name FROM employees
WHERE YEAR(hire_date) = '2000';
#HireDate2000


SELECT count(*) FROM salaries;
 #967330 
 
SELECT * FROM salaries;

 SELECT count(*) FROM salaries
 WHERE salary > 100000;
 #32205


