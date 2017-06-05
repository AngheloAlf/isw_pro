/**
 * Created by Anghelo on 04-06-2017.
 */
var express = require("express");
var router = express.Router();

var common = require("./common");

var notiData = require("../models/notifications");

var path = require("path");

router.get("/read", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        var userId = req.session.userData.userID;
        if(usertype < 3){
            notiData.sendNotificationsByUserId(req, res, userId);
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Obtener notificaciones", usertype: usertype});
        }
    });
});

router.get("/accept/:notiId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        if(usertype < 3){
            notiData.acceptNotification(req, res, req.params.notiId);
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Aceptar notificaciones", usertype: usertype});
        }
    });
});

module.exports = router;
