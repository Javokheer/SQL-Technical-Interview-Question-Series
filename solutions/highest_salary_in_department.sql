/*
Highest Salary In Department

Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.
*/




SELECT  department,
           first_name, 
           salary
FROM
    (SELECT department,
           first_name, 
           salary,
           RANK() over(PARTITION BY department ORDER BY salary DESC) rn
    FROM employee) sub
WHERE rn = 1
