/*
Reviews of Categories
Find the top business categories based on the total number of reviews. 
Output the category along with the total number of reviews. 
Order by total reviews in descending order.
*/




SELECT categories, 
       SUM(review_count)
FROM
    (SELECT  unnest(string_to_array(categories, ';')) AS categories,
            review_count
    FROM yelp_business) sub
GROUP BY 1
ORDER BY 2 DESC
