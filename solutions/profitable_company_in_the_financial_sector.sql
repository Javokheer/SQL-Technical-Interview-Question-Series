/*
Find the most profitable company in the financial sector of the entire world along with its continent

Find the most profitable company from the financial sector. Output the result along with the continent.
*/




SELECT company, continent
FROM forbes_global_2010_2014
WHERE sector = 'Financials' 
ORDER BY rank
limit 1
