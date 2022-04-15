/*
Top Cool Votes

Find the review_text that received the highest number of  'cool' votes.
Output the business name along with the review text with the highest numbef of 'cool' votes.
*/




SELECT business_name, review_text
FROM     
    (SELECT business_name, review_text,
           RANK() over(ORDER BY cool DESC) rn
    FROM yelp_reviews) sub
WHERE rn = 1
