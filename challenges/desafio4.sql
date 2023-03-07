SELECT
  users.user_name AS pessoa_usuaria,
  IF(MAX(reproduction_historic.reproduction_date) >= "2021-01-01 01:01:01", 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM users
INNER JOIN reproduction_historic
ON reproduction_historic.user_people_historic = users.id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria ASC;