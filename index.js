const connect = require('./data/connect');
const mysql = require('mysql');
const inquirer = require('inquirer');
const cTable = require('console.table');

const connection = mysql.createConnection({
     host: 'localhost',
     user: 'root',
     password: 'password',
     database: 'database'
 });

 connection.connect((err) => {
     if (err) throw err;
     console.log('Connected!');
 });

 module.exports = connection;

const promptQuestions = () => {
    return inquirer.prompt([
        {
            type: 'list',
            name: 'action',
            message: 'What would you like to do?',
            choices: ['View All Employees', 'View All Employees By Department', 'View All Employees By Manager', 'Add Employee', 'Remove Employee', 'Update Employee Role', 'Update Employee Manager', 'View All Roles', 'Add Role', 'Remove Role', 'View All Departments', 'Add Department', 'Remove Department', 'Quit']
        }
    ])
}

// CONFUSED ON ADDING VIEW EMPLOYEE FUNCTION

function viewEmployee() {
    connect.query(`SELECT * FROM employee`, (err, res) => {
        if (err) {
            console.log(err)
        }
        console.table(results);
        promptQuestions();
    })    
}
function addEmployee() {
    return inquirer
    
}

