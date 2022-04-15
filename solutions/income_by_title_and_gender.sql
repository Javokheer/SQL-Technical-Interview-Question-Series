/*
Income By Title and Gender

Find the average total compensation based on employee titles and gender. 
Total compensation is calculated by adding both the salary and bonus of each employee. 
However, not every employee receives a bonus so disregard employees without bonuses in your calculation. 
Employee can receive more than one bonus.
Output the employee title, gender (i.e., sex), along with the average total compensation.
*/



SELECT e.employee_title, e.sex, AVG(e.salary + b.salary)
FROM sf_employee e
JOIN (
SELECT worker_ref_id w_id, sum(bonus) salary
FROM sf_bonus b
GROUP BY 1) b ON e.id = b.w_id
GROUP BY 1, 2
