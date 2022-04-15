/*
Finding Updated Records

We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
Find the current salary of each employee assuming that salaries increase each year. 
Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.
*/




WITH last_salary  AS (
SELECT id, 
           first_name, 
           last_name, 
           department_id,
           salary AS current_salary,
           ROW_NUMBER() OVER (PARTITION BY id, department_id ORDER BY salary DESC) AS rn
    FROM ms_employee_salary
)

SELECT id, first_name, last_name, department_id, current_salary
FROM last_salary
WHERE rn = 1
ORDER BY id
