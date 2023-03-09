SELECT
	artists.artist AS artista,
	albums.album AS album
FROM artists
	INNER JOIN albums
	ON artist_id = artists.id
WHERE artists.id = 3;