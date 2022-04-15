/*
Largest Olympics

Find the Olympics with the highest number of athletes. 
The Olympics game is a combination of the year and the season, and is found in the 'games' column. 
Output the Olympics along with the corresponding number of athletes.
*/




SELECT games, count(distinct id)
FROM olympics_athletes_events
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1
