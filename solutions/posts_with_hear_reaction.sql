/*
Find all posts which were reacted to with a heart

Find all posts which were reacted to with a heart.
*/




SELECT DISTINCT p.* 
FROM facebook_posts p
JOIN facebook_reactions r ON p.post_id = r.post_id
WHERE r.reaction = 'heart'
