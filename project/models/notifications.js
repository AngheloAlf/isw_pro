/**
 * Created by Anghelo on 04-06-2017.
 */
var Db = require('./dbModel').Db;

var notifications = Db.extend({
    tableName: "notifications"
});
exports.notifications = notifications;

exports.sendNotificationsByUserId = function(req, res, userId) {
    var notiVar = new notifications();
    var where = "userId='" + userId + "'";

    notiVar.find('all', {where: where}, function(err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows));
    });
};

exports.acceptNotification = function(req, res, notiId){
    var notiVar = new notifications();
    var where = "id='" + notiId + "'";
    var query = "UPDATE notifications SET accepted='1' WHERE " + where;

    notiVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            res.send("OK");
        }
        else{
            res.send("ERROR");
        }
    });
};

exports.addNotification = function(req, res, userId, notiData, userCreator, link){
    var datetime = new Date();
    var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    var hora = datetime.getHours() + ":" + datetime.getMinutes() + ":" + datetime.getSeconds();
    (new notifications({userId: userId, tipo: notiData, userCreator: userCreator, fecha: fecha + " " + hora, accepted: '0', link: link})).save();
};
