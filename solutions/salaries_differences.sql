/*
Salaries Differences

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments.
Output just the absolute difference in salaries.
*/




SELECT ABS(
  (SELECT MAX(emp.salary) 
  FROM db_employee emp
  JOIN db_dept dept ON emp.department_id = dept.id
  WHERE dept.department = 'engineering') 
   -
  (SELECT MAX(emp.salary) 
  FROM db_employee emp
  JOIN db_dept dept ON emp.department_id = dept.id
  WHERE dept.department = 'marketing')) 
