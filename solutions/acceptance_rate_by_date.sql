/*
Acceptance Rate By Date

What is the overall friend acceptance rate by date? Your output should have the rate of acceptances by the date the request was sent. 
Order by the earliest date to latest.

Assume that each friend request starts by a user sending (i.e., user_id_sender) a friend request to another user (i.e., user_id_receiver) 
that's logged in the table with action = 'sent'. If the request is accepted, the table logs action = 'accepted'. 
If the request is not accepted, no record of action = 'accepted' is logged.
*/




WITH sent_req AS (
SELECT user_id_sender, 
       user_id_receiver, 
       date
FROM fb_friend_requests 
WHERE action = 'sent'),

recieved_req AS (
SELECT user_id_sender, 
       user_id_receiver, 
       date
FROM fb_friend_requests 
WHERE action = 'accepted')

SELECT s.date, 
       COUNT(r.user_id_receiver)/COUNT(s.user_id_sender)::decimal acceptance_rate
FROM sent_req s
LEFT JOIN recieved_req r ON s.user_id_sender = r.user_id_sender
GROUP BY 1
ORDER BY 1
