DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE artists(
id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(100) 
) engine = InnoDB;

CREATE TABLE plans(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plan VARCHAR(15) NOT NULL,
value_plan DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
user_name VARCHAR(100) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
assignature_date DATE NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans(id)
) engine = InnoDB;

CREATE TABLE albums(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
album VARCHAR(100) NOT NULL,
artist_id INT NOT NULL,
release_year INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE musics(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
music VARCHAR(100) NOT NULL,
duration_in_seconds VARCHAR(7),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(id)
) engine = InnoDB;

CREATE TABLE followers(
id INT AUTO_INCREMENT NOT NULL,
follower INT NOT NULL,
following INT NOT NULL,
CONSTRAINT PRIMARY KEY(id, follower),
FOREIGN KEY (follower) REFERENCES users(id),
FOREIGN KEY (following) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE reproduction_historic(
user_people_historic INT NOT NULL,
music_played INT NOT NULL,
reproduction_date DATETIME NOT NULL DEFAULT now(),
CONSTRAINT PRIMARY KEY(user_people_historic, music_played),
FOREIGN KEY (user_people_historic) REFERENCES users(id),
FOREIGN KEY (music_played) REFERENCES musics(id)
) engine = InnoDB;

INSERT INTO artists(
artist
)VALUES(
'Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');

INSERT INTO plans(
plan, value_plan
)VALUES(
'gratuito', '0.00'),
('familiar', '7.99'),
('universitário', '5.99'),
('pessoal', '6.99');

INSERT INTO users(
user_name, age, plan_id, assignature_date
)VALUES(
'Barbara Liskov', '82','1', '2019-10-20'),
('Robert Cecil Martin', '58','1', '2017-01-06'),
('Ada Lovelace', '37', '2', '2017-12-30'),
('Martin Fowler', '46','2', '2017-01-17'),
('Sandi Metz', '58','2', '2018-04-29'),
('Paulo Freire', '19', '3', '2018-02-14'),
('Bell Hooks', '26', '3', '2018-01-05'),
('Christopher Alexander', '85', '4', '2019-06-05'),
('Judith Butler', '45', '4', '2020-05-13'),
('Jorge Amado', '58', '4', '2020-05-13');

INSERT INTO albums(
album, artist_id, release_year
)VALUES(
'Renaissance', '1', '2022'),
('Jazz', '2', '1978'),
('Hot Space', '2', '1982'),
('Falso Brilhante', '3', '1998'),
('Vento de Maio', '3','2001'),
('QVVJFA?', '4','2003'),
('Somewhere Far Beyond', '5','2007'),
('I Put A Spell On You', '6','2012');

INSERT INTO musics(
music, duration_in_seconds, album_id
)VALUES(
'BREAK MY SOUL', '279', '1'),
('VIRGO`S GROOVE', '369', '1'),
('ALIEN SUPERSTAR', '116', '1'),
('Don`t Stop Me Now', '203', '2'),
('Under Pressure', '152', '3'),
('Como Nossos Pais', '105', '4'),
('O Medo de Amar é o Medo de Ser Livre', '207', '5'),
('Samba em Paris', '267', '6'),
('The Bard`s Song', '244', '7'),
('Feeling Good', '100','8');

INSERT INTO followers(
follower, following
)VALUES(
'1', '1'),
('1', '2'),
('1','3'),
('2', '1'),
('2', '3'),
('3', '2'),
('4', '4'),
('5', '5'),
('5',  '6'),
('6', '6'),
('6', '1'),
('7','6'),
('9', '3'),
('10', '2');

INSERT INTO reproduction_historic(
user_people_historic, music_played, reproduction_date
)VALUES(
'1', '8', '2022-02-28 10:45:55'),
('1', '2', '2020-05-02 05:30:35'),
('1', '10', '2020-03-06 11:22:33'),
('2', '10', '2022-08-05 08:05:17'),
('2', '7', '2020-01-02 07:40:33'),
('3', '10', '2020-11-13 16:55:13'),
('3', '2', '2020-12-05 18:38:30'),
('4', '8', '2021-08-15 17:10:10'),
('5', '8', '2022-01-09 01:44:33'),
('5', '5', '2020-08-06 15:23:43'),
('6', '7', '2017-01-24 00:31:17'),
('6', '1', '2017-10-12 12:35:20'),
('7', '4', '2011-12-15 22:30:49'),
('8', '4', '2012-03-17 14:56:41'),
('9', '9', '2022-02-24 21:14:22'),
('10', '3', '2015-12-13 08:30:22');
