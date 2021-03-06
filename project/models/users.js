/**
 * Created by Anghelo on 26-04-2017.
 */

var Db = require('./dbModel').Db;
var logsLogin = require('./logs_login');
var bcrypt = require("bcrypt");

var User = Db.extend({
    tableName: "users"
});
exports.User = User;

exports.getUser = function(req, res, username, password){
    var userVar = new User();
    var where = "LCASE(username)='" + username.toLowerCase() + "' AND deleted='0'";

    userVar.find('all', {fields: ["id", "username", "password", "usertype"], where: where}, function (err, rows){
        if(err){
            throw err;
        }

        var connSuccessful;
        var userId;
        var datetime = new Date();

        if(rows.length === 1 && bcrypt.compareSync(password, rows[0].password)){
            var logInTimestamp = parseInt(datetime.getTime()/1000);
            req.session.userData = {userID: rows[0].id, userName: rows[0].username, usertype: rows[0].usertype, firstTimestamp: logInTimestamp, timestamp: logInTimestamp};

            userId = rows[0].id;
            connSuccessful = true;
        }
        else{ //User not found
            userId = -1;
            connSuccessful = false;
        }
        var date = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate() + " " + datetime.getUTCHours()+":" + datetime.getUTCMinutes()+":" + datetime.getUTCSeconds();
        var ip = req.connection.remoteAddress;
        var ipProxy = req.headers['x-forwarded-for'];

        //logs the login try
        logsLogin.addsLogLogin(req, res, userId, username, date, ip, ipProxy, connSuccessful);

        if(connSuccessful){
            res.redirect('/users');
        }
        else{
            res.render("index", {title: 'Sistema de tickets', errorMsg: true});
        }

    });
};

exports.createUser = function(req, res, username, password, usertype){
    var userVar = new User();
    var where = "LCASE(username)='" + username.toLowerCase() + "'";

    userVar.find('all', {fields: ["id"], where: where}, function (err, rows){
        if(err){
            throw err;
        }

        if(rows[0] === undefined){ //User not found
            var newUser = new User({username: username, password: password, usertype: usertype});
            newUser.save();
            res.redirect("/users");
        }
        else{ //The username already exists
            //TODO: Show 'The username already exists' error
            res.redirect("/users");
        }
    });
};

exports.sendUsersByType = function(req, res, type){
    var userVar = new User();
    var where = "usertype='" + type + "'";

    userVar.find("all", {fields: ["id", "username"], where: where}, function (err, rows){
        if(err){
            throw err;
        }

        res.send(JSON.stringify(rows));

    });
};

exports.sendUsers = function(req, res){
    var userVar = new User();
    var where = "usertype<>3 AND deleted=0";

    userVar.find("all", {fields: ["id", "username", "usertype"], where: where}, function (err, rows){
        if(err){
            throw err;
        }

        res.send(JSON.stringify(rows));

    });
};

exports.deleteUser = function(req, res, userId){
    var userVar = new User();
    var where = "id='" + userId + "'";
    var query = "UPDATE users SET deleted='1' WHERE " + where;

    userVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            // Updated !
        }
        else{
            // Not found
        }
    });
};

exports.sendUserByID = function(req, res, userId){
    var userVar = new User();
    var where = "id='" + userId + "'";

    userVar.find("all", {fields: ["id", "username"], where: where}, function (err, rows){
        if(err){
            throw err;
        }

        res.send(JSON.stringify(rows[0]));
    });
};

exports.allUsersByType = function(req, res, type, callback){
    var userVar = new User();
    var where = "deleted='0' and usertype='" + type + "'";

    userVar.find("all", {fields: ["id"], where: where}, function (err, rows){
        if(err){
            throw err;
        }
        rows.forEach(function(value){
            callback(value.id)
        });
    });
};
