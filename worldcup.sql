CREATE TABLE teams(
team_id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE games(
game_id SERIAL PRIMARY KEY NOT NULL,
year INTEGER NOT NULL,
round VARCHAR NOT NULL,
winner_id INT REFERENCES teams(team_id) NOT NULL,
opponent_id INT REFERENCES teams(team_id) NOT NULL,
winner_goals INTEGER NOT NULL,
opponent_goals INTEGER NOT NULL
);