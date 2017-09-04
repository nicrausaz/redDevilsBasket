let mysql = require('mysql')
let dbInfos = require('./db_connection.json')


let con = mysql.createConnection({
    host: dbInfos.host,
    user: dbInfos.user,
    password: dbInfos.password
})

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!")
})