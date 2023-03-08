SELECT
	users.user_name AS pessoa_usuaria,
	COUNT(reproduction_historic.user_people_historic) AS musicas_ouvidas,
	FORMAT(ROUND(SUM(musics.duration_in_seconds / 60), 2), 2) AS total_minutos
FROM users
INNER JOIN reproduction_historic
ON users.id = reproduction_historic.user_people_historic
INNER JOIN musics
ON reproduction_historic.music_played = musics.id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria ASC;