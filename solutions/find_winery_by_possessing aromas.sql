/*
Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut

Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut.
Output unique winery values only.
*/




SELECT 
    distinct winery 
FROM winemag_p1
WHERE 
       description ilike  '%plum%' or 
       description ilike '%cherry%' or
       description ilike '%rose%' or 
       description ilike '%hazelnut%' 
      
