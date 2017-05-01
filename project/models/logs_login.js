/**
 * Created by Anghelo on 26-04-2017.
 */

var Db = require('../models/dbModel').Db;

var Logs_login = Db.extend({
    tableName: "logs_login"
});
exports.Logs_login = Logs_login;

/* It will create a log everytime that some user logs in on the system */
exports.addsLogLogin = function(req, res, userId, username, date, ip, ip_proxy, connSuccessful){
    var log = new Logs_login({user_id: userId, username: username, date: date, ip: ip, ip_proxy: ip_proxy, conn_successful: connSuccessful});
    log.save();
};
/* It will add the time of the user that just log out of the system */
exports.updateLogLogOut = function(req, res, userId, timeOnline){
    var logVar = new Logs_login();

    logVar.query('UPDATE logs_login SET timeOnline="' + timeOnline + '" where user_id="' + userId + '" ORDER BY id DESC LIMIT 1', function (err, rows){
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
