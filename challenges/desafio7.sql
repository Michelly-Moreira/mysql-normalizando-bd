SELECT
	artists.artist AS artista,
	albums.album AS album,
	COUNT(followers.follower) AS pessoas_seguidoras
FROM artists
INNER JOIN albums
ON artists.id = artist_id
INNER JOIN followers
ON following = artists.id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;