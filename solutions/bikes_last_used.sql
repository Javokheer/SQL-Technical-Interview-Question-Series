/*
Bikes Last Used

Find the last time each bike was in use. 
Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned).
Order the results by bikes that were most recently used.




SELECT DISTINCT bike_number, 
      MAX(end_time)
       --ROW_NUMBER() OVER (PARTITION BY bike_number ORDER BY end_time DESC) rn
FROM dc_bikeshare_q1_2012
GROUP BY 1
ORDER BY 2
