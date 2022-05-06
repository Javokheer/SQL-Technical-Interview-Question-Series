# Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.


# https://leetcode.com/problems/second-highest-salary/


SELECT  MAX(salary) SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
)
