/*
Classify Business Type

Classify each business as either a restaurant, cafe, school, or other. A restaurant should have the word 'restaurant' in the business name. For cafes, either 'cafe', 'café', or 'coffee' can be in the business name. 'School' should be in the business name for schools. All other businesses should be classified as 'other'. Output the business name and the calculated classification.
*/




SELECT distinct business_name, 
    CASE 
        WHEN lower(business_name) like any(array['%restaurant%']) THEN 'restaurant'
        WHEN lower(business_name) like any(array['%cafe%' , '%café%' , '%coffee%']) THEN 'cafe'
        WHEN business_name ilike any(array['%school%']) THEN 'school'
        ELSE 'other' 
        END business_type
FROM sf_restaurant_health_violations;
