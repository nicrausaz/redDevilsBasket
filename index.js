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

// get teams
app.get('/teams', (req, res) => {
  con.query('SELECT * FROM t_teams;', function (err, result) {
    if (err) throw err
    res.send(result)
  })
})

// Get player from team + category
// app.get('/teamcategory', (req, res) => {
//   let team = 'Red Devils' //req.body.team
//   let category = 'U20' // req.body.category
//   let sqlReq = "SELECT * FROM t_players INNER JOIN t_teams ON t_players.player_team = t_teams.team_id INNER JOIN t_category ON t_players.player_category = t_category.category_id WHERE t_teams.team_name = " + team + " AND t_category.category_name = " + category +";"
//   con.query(sqlReq, function (err, result) {
//     if (err) throw err
//     res.send(result)
//   })
// })