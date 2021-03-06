const mysql = require('mysql')
const express = require('express')
const app = express()

let dbInfos = require('./db_connection.json')

let con = mysql.createConnection({
  host: dbInfos.host,
  user: dbInfos.user,
  password: dbInfos.password,
  database: dbInfos.database
})

con.connect(function (err) {
  if (err) throw err;
  console.log("Connected!")
})

// host API on localhost:3000
app.listen(3000, function () {
  console.log('Listening...')
})

//authentificate
app.get('/auth', (req, res) => {
  let username = 'nico' //req.body.username
  let password = '1234' //req.body.password
  let sqlReq = "SELECT * from t_admins WHERE admin_username = " + con.escape(username) + " && admin_password = " + con.escape(password) + ""
  con.query(sqlReq, function (err, result) {
    if (err) throw err
    res.send(result)
  })
})

// get teams
app.get('/teams', (req, res) => {
  con.query('SELECT * FROM t_teams;', function (err, result) {
    if (err) throw err
    res.send(result)
  })
})

// Get player from team + category
app.get('/teamcategory', (req, res) => {
  let team = 'Red Devils' //req.body.team
  let category = 'U20' // req.body.category
  let sqlReq = "SELECT * FROM t_players INNER JOIN t_teams ON t_players.player_team = t_teams.team_id INNER JOIN t_category ON t_players.player_category = t_category.category_id WHERE t_teams.team_name = " + con.escape(team) + " AND t_category.category_name = " + con.escape(category) + ";"

  con.query(sqlReq, function (err, result) {
    if (err) throw err
    res.send(result)
  })

  // Get played games (and teams)
  app.get('/playedgames', (req, res) => {
    let sqlReq = "SELECT home_player.team_name AS 'Home Team', away_player.team_name AS 'Away Team', t_games.game_date, t_games.game_score FROM t_games INNER JOIN t_play_game ON t_games.game_id = t_play_game.play_game_game INNER JOIN t_teams AS home_player ON t_play_game.play_game_team_home = home_player.team_id INNER JOIN t_teams AS away_player ON t_play_game.play_game_team_away = away_player.team_id WHERE t_games.game_date > NOW();"
    
    con.query(sqlReq, function (err, result) {
      if (err) throw err
      res.send(result)
    })
  })
})
