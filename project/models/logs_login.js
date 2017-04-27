/**
 * Created by Anghelo on 26-04-2017.
 */

var Db = require('../models/dbModel').Db;

var Logs_login = Db.extend({
    tableName: "logs_login"
});
exports.Logs_login = Logs_login;

exports.addsLogLogin = function(req, res, userId, username, date, ip, ip_proxy, connSuccessful){
    var log = new Logs_login({user_id: userId, username: username, date: date, ip: ip, ip_proxy: ip_proxy, conn_successful: connSuccessful});
    log.save();
};



