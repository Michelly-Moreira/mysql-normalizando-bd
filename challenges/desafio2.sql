SELECT
  (select  COUNT(*) from musics) AS cancoes,
  (select  COUNT(*) from artists) AS artistas,
  (select  COUNT(*) from albums) AS albuns;