// db/connection.js
const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Jc2824314sql!',
  database: 'employee_tracker_1',
});

module.exports = connection;