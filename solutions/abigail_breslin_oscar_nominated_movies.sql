/*
Count the number of movies that Abigail Breslin nominated for oscar
*/




SELECT 
      COUNT(id) 
FROM oscar_nominees
WHERE nominee = 'Abigail Breslin'
