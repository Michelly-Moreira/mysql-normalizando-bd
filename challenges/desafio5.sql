SELECT 
	musics.music AS cancao,
	COUNT(reproduction_historic.music_played) AS reproducoes
FROM musics
INNER JOIN reproduction_historic
ON reproduction_historic.music_played = musics.id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;