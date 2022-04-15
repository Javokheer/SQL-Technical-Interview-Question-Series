/*
Number of violations

You're given a dataset of health inspections. Count the number of violation in an inspection in 'Roxanne Cafe' for each year. 
If an inspection resulted in a violation, there will be a value in the 'violation_id' column. 
Output the number of violations by year in ascending order.
*/




SELECT  COUNT(violation_id),
       EXTRACT(year FROM inspection_date::date)
FROM sf_restaurant_health_violations
WHERE violation_id IS NOT NULL AND business_name = 'Roxanne Cafe'
GROUP BY 2
