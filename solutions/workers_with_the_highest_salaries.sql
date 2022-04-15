/*
Workers With The Highest Salaries

Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles that share the highest salary.
*/




select title,
       salary
FROM
    (SELECT t.worker_title title, 
           w.salary salary,
           RANK() OVER( ORDER BY w.salary DESC) rn
    FROM worker w
    JOIN title t ON w.worker_id = t.worker_ref_id ) sub
WHERE rn = 1
