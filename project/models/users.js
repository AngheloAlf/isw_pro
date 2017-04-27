/**
 * Created by Anghelo on 26-04-2017.
 */

var Db = require('../models/dbModel').Db;

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

        if(rows[0] === undefined){ //User not found

        }
        else{//login user
            req.session.userData = {userID: rows[0].id_user, userName: username, usertype: rows[0].usertype};
            var datetime = new Date();

            console.log(datetime.getUTCFullYear() + " - " + (datetime.getUTCMonth()+1) + " - " + datetime.getUTCDate());
            console.log(req.connection.remoteAddress);
            console.log(req.headers['x-forwarded-for']);
            res.redirect('/users');
        }
    });
};


