const inquirer = require("inquirer");
const mysql = require("mysql2");

var dbConnection = mysql.createConnection({
  host: "localhost",
//   Input username
  user: "your_username",
//   Input password
  password: "your_password",
  database: "employeeDirectory"
});

// If the connection doesn't work
dbConnection.connect((error) => {
  if (error) {
    throw error;
  }
});

module.exports = dbConnection;