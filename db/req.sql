# Get teams
SELECT * FROM t_teams;

# Get player from team + category
SELECT * FROM t_players
INNER JOIN t_teams ON t_players.player_team = t_teams.team_id
INNER JOIN t_category ON t_players.player_category = t_category.category_id
WHERE t_teams.team_name = 'Red Devils' AND t_category.category_name = 'U20';

# Get played games (and teams)
SELECT home_player.team_name AS 'Home Team', away_player.team_name AS 'Away Team', t_games.game_date, t_games.game_score
FROM t_games
INNER JOIN t_play_game ON t_games.game_id = t_play_game.play_game_game
INNER JOIN t_teams AS home_player ON t_play_game.play_game_team_home = home_player.team_id
INNER JOIN t_teams AS away_player ON t_play_game.play_game_team_away = away_player.team_id
WHERE t_games.game_date > NOW();

#