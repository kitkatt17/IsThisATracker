// Importing and requiring mysql12
const mysql = require('mysql2');

// const express = require('express');
// const connection = require("./db/dbConnection");
const { default: inquirer } = require('inquirer');
const { type } = require('os');
const { async } = require('rxjs');
const connection = require('./db/dbConnection');


// Creating a connection to the database
// const connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     database: 'test'
//   });

// A simple query
connection.query(
    'SELECT * FROM `table` WHERE `name` = ? AND `salary` > ?',
    function(error, results, fields) {
      console.log(results); // results contains rows returned by server
      console.log(fields); // fields contains extra meta data about results, if available
    }
  );

 // With a placeholder
connection.query(
    'SELECT * FROM `table` WHERE `name` = ? AND `salary` > ?',
    ['Page'],
    function(error, results) {
      console.log(results);
    }
  ); 
   
function employeeDirectory() {
    inquirer.prompt([
        {
        type: 'input',
        message: "This is the employee database",
        name: 'name',
    },
]);
// Formatting the table showing department names and departmentId's
    viewDepartments = async () => {
        try {
            const [results] = await connection.promise().query('SELECT * FROM departmentId');
            console.table(results);
            promptChoices(); 
        } catch (error) {
            throw error;
        }
    };
// Formatting the table showing the title/roleId's
    viewRoles = async () => {
        try {
            const [results] = await connection.promise().query('SELECT * FROM role');
            console.table(results);
            promptChoices();
        } catch (error) {
            throw error;
        }
    };
// Formatting the table showing the employee data
    viewEmployees = async () => {
        try {
            const [results] = await connection.promise().query('SELECT * FROM employee');
            console.table(results);
            promptChoices();
        } catch (error) {
            throw error;
        }
    };

}

// module.exports = connection(connection);

init()