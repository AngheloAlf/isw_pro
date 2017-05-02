/**
 * Created by Anghelo on 02-05-2017.
 */

var express = require("express");
var router = express.Router();

var common = require("./common");

var logsLogin = require("../models/logs_login");

router.get("/read", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        if(usertype === 3){
            logsLogin.sendLogs(req, res);
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Leer logs de tickets", usertype: usertype});
        }
    });
});

router.get("/readByUser/:userId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        if(usertype === 3){
            logsLogin.sendLogsByUserId(req, res, req.params.userId);
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Leer logs de tickets", usertype: usertype});
        }
    });
});

module.exports = router;
