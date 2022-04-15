/*
Find how many times each artist appeared on the Spotify ranking list

Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.
*/




SELECT artist, count(position)
FROM spotify_worldwide_daily_song_ranking
GROUP BY 1
ORDER BY 2 DESC
