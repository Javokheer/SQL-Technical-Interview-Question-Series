/*
Number Of Bathrooms And Bedrooms

Find the average number of bathrooms and bedrooms for each city’s property types. 
Output the result along with the city name and the property type.
*/



SELECT city,
       property_type,
       AVG(bathrooms) AS avg_bathrooms,
       AVG(bedrooms) AS avg_bedrooms 
FROM airbnb_search_details
GROUP BY 1, 2;  
