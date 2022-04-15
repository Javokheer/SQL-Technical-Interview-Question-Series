/*
Find the rate of processed tickets for each type
*/




SELECT type, SUM(CASE WHEN processed THEN 1 ELSE 0 END)::numeric/
 COUNT(*)  processed_rate
FROM facebook_complaints 
GROUP BY 1
