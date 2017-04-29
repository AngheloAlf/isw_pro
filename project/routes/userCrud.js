/**
 * Created by Anghelo on 28-04-2017.
 */

var express = require("express");
var router = express.Router();
var common = require("./common");

var usersModel = require("../models/users");

/* create ticket */
router.post('/create', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        if(req.session.userData.usertype === 3){
            var username = req.body.username;
            var password = req.body.password;
            var password2 = req.body.password2;
            var usertype = req.body.usertype;

            if(password === password2){
                // TODO: input verifications
                usersModel.createUser(req, res, username, password, usertype);
            }
            else{
                //TODO: Mostrar error
                res.redirect("/users");
            }
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: req.session.userData.userName, accion: "Crear usuario"});
        }
    });
});

router.get("/", function(req, res){
    res.redirect('/');
});

module.exports = router;
