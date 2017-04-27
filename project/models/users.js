/**
 * Created by Anghelo on 26-04-2017.
 */

var Db = require('./dbModel').Db;
var logsLogin = require('./logs_login');


var User = Db.extend({
    tableName: "users"
});
exports.User = User;


exports.getUser = function(req, res, username, password){
    var userVar = new User();
    var where = "username='" + username + "' AND password='" + password + "'";

    userVar.find('all', {fields: ["id", "usertype"], where: where}, function (err, rows){
        if(err){
            throw err;
        }

        var connSuccessful;
        var userId;
        var datetime = new Date();
        if(rows[0] === undefined){ //User not found
            userId = -1;
            connSuccessful = false;
        }
        else{//login user
            var logInTimestamp = parseInt(datetime.getTime()/1000);
            req.session.userData = {userID: rows[0].id, userName: username, usertype: rows[0].usertype, firstTimestamp: logInTimestamp, timestamp: logInTimestamp};

            userId = rows[0].id;
            connSuccessful = true;
        }
        var date = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate() + " " + datetime.getUTCHours()+":" + datetime.getUTCMinutes()+":" + datetime.getUTCSeconds();
        var ip = req.connection.remoteAddress;
        var ipProxy = req.headers['x-forwarded-for'];

        //logs the login try
        logsLogin.addsLogLogin(req, res, userId, username, date, ip, ipProxy, connSuccessful);

        res.redirect('/users');

    });
};
