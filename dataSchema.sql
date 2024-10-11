CREATE TABLE players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(255) NOT NULL,
    nickname VARCHAR(100),
    role VARCHAR(50),
    country VARCHAR(100)
);

CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(255) NOT NULL,
    region VARCHAR(100)
);

CREATE TABLE player_teams (
    player_team_id INT PRIMARY KEY,
    player_id INT,
    team_id INT,
    start_date DATE,
    end_date DATE,
    is_current_team BOOLEAN DEFAULT FALSE
);

CREATE TABLE achievements (
    achievement_id INT PRIMARY KEY,
    achievement_name VARCHAR(255) NOT NULL,
    is_major_event BOOLEAN,
    event_date DATE
);

CREATE TABLE player_achievements (
    player_achievement_id INT PRIMARY KEY,
    player_id INT,
    achievement_id INT
);

insert into players (player_id, player_name, nickname, role, country) values (1, 'Sidnee Traite', 'SilentAssassin', 5, 'Sweden'),
(2, 'Hester Olivey', 'NightStalker', 3, 'Indonesia'),
(3, 'Pauly Hawe', 'DoomBringer', 2, 'Poland'),
(4, 'Ethe Emmett', 'ThunderShock', 5, 'Indonesia'),
(5, 'Cloris Bonifazio', 'IceQueen', 5, 'Ecuador'),
(6, 'Jodi Ralton', 'InfernoKnight', 2, 'Vietnam'),
(7, 'Annadiane Bestar', 'DoomBringer', 3, 'Indonesia'),
(8, 'Carlee Zavattiero', 'VenomousViper', 3, 'Indonesia'),
(9, 'Mack Korn', 'DragonSlayer', 1, 'Indonesia'),
(10, 'Dania Throughton', 'PhoenixRising', 4, 'Portugal'),
(11, 'Zarah Winsor', 'SteelCrusader', 5, 'Russia'),
(12, 'Jacinthe Vasiliev', 'SilentAssassin', 3, 'Mongolia'),
(13, 'Odele Athelstan', 'RagingBull', 2, 'Philippines'),
(14, 'Clim Fairbrace', 'VenomousViper', 5, 'Iran'),
(15, 'Tanya Hidderley', 'BlazeFury', 4, 'Norway'),
(16, 'Norina Tokley', 'ShadowStrike', 1, 'Estonia'),
(17, 'Kyle Dekeyser', 'RagingBull', 2, 'China'),
(18, 'Mycah Wherrett', 'NightStalker', 3, 'Philippines'),
(19, 'Aguistin Tidcomb', 'MysticWraith', 5, 'Russia'),
(20, 'Reidar Huller', 'MysticWraith', 2, 'Spain');

insert into teams (team_id, team_name, region) values (1, 'TeamLiquid', 'SEA'),
 (2, 'TNC', 'SEA'),
 (3, 'AuroraGaming', 'WEU'),
 (4, 'TeamSpirit', 'WEU'),
 (5, 'NigmaGalaxy', 'CN'),
 (6, 'FNC', 'SEA'),
 (7, 'BetBoom', 'SEA'),
 (8, 'T1', 'WEU'),
 (9, 'XG', 'CN'),
 (10, 'TeamDarleng', 'WEU');

insert into player_teams (player_team_id, player_id, team_id, start_date, end_date, is_current_team) values (1, 3, 2, '2023-11-27', '2021-10-16', true),
 (2, 11, 10, '2024-08-08', '2022-02-01', false),
 (3, 9, 8, '2023-05-22', '2023-07-04', true),
 (4, 19, 4, '2022-01-26', '2022-12-29', false),
 (5, 14, 10, '2023-02-12', '2024-06-02', true),
 (6, 9, 7, '2020-03-18', '2021-05-14', false),
 (7, 5, 2, '2022-08-18', '2020-05-11', true),
 (8, 7, 2, '2022-08-10', '2020-08-10', false),
 (9, 11, 4, '2020-01-12', '2024-08-14', true),
 (10, 10, 9, '2020-05-29', '2022-11-02', false),
 (11, 1, 5, '2021-03-27', '2020-01-09', false),
 (12, 14, 5, '2023-11-20', '2020-05-26', true),
 (13, 1, 5, '2024-04-12', '2023-10-14', true),
 (14, 12, 2, '2023-08-31', '2023-08-26', false),
 (15, 18, 9, '2022-01-16', '2021-01-11', true),
 (16, 12, 6, '2020-01-22', '2020-08-27', true),
 (17, 4, 6, '2021-10-23', '2021-12-20', true),
 (18, 18, 3, '2020-10-19', '2024-04-26', false),
 (19, 9, 5, '2024-01-09', '2022-09-23', true),
 (20, 14, 1, '2021-07-30', '2023-07-25', true);

insert into achievements (achievement_id, achievement_name, is_major_event, event_date) values (1, 'The Internationals Winner', true, '2020-06-04'),
 (2, 'Dreamleague Winner', false, '2021-05-18'),
 (3, 'Frankfurt Major Winner', true, '2023-03-17'),
 (4, 'Epicenter Winner', true, '2019-03-03'),
 (5, 'Chengdu Major Winner', true, '2020-02-19');

insert into player_achievements (player_achievement_id, player_id, achievement_id) values (1, 3, 4),
 (2, 20, 1),
 (3, 16, 1),
 (4, 17, 5),
 (5, 13, 1),
 (6, 1, 4),
 (7, 9, 2),
 (8, 12, 4),
 (9, 2, 1),
 (10, 8, 3),
 (11, 15, 5),
 (12, 14, 1),
 (13, 1, 3),
 (14, 20, 4),
 (15, 4, 5),
 (16, 16, 4),
 (17, 12, 4),
 (18, 13, 4),
 (19, 19, 1),
 (20, 8, 4);
