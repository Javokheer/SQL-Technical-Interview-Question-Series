/*
Ranking Most Active Guests

Rank guests based on the number of messages they've exchanged with the hosts. 
Guests with the same number of messages as other guests should have the same rank. 
Do not skip rankings if the preceding rankings are identical.
Output the rank, guest id, and number of total messages they've sent. 
Order by the highest number of total messages first.
*/




SELECT *
FROM
    (SELECT id_guest,
           SUM(n_messages),
           DENSE_RANK() OVER(ORDER BY SUM(n_messages) DESC) rank
    FROM airbnb_contacts
    GROUP BY 1
    ORDER BY 2 DESC) sub
