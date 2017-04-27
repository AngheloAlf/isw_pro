/**
 * Created by Anghelo on 26-04-2017.
 */

var mysqlModel = require('mysql-model');

var IswDB = mysqlModel.createConnection({
    host     : '127.0.0.1',
    user     : 'root',
    password : '',
    database : 'isw',
    dateStrings: 'date'
});

exports.Db = IswDB;
