/**
 * Created by Anghelo on 28-04-2017.
 */

var express = require("express");
var router = express.Router();
var common = require("./common");
var bcrypt = require('bcrypt');

var usersModel = require("../models/users");

/* create ticket */
router.post('/create', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        if(req.session.userData.usertype === 3){
            var username = req.body.username;
            var password = req.body.password;
            var password2 = req.body.password2;
            var usertype = req.body.usertype;

            req.checkBody('username', 'Name is required').notEmpty();
            req.checkBody('usertype', 'Usertype is not valid').notEmpty(); // REVISAR ESTA PARTE CON EL FORMULARIO
            req.checkBody('password', 'Password is required').notEmpty();
            req.checkBody('password2', 'Passwords do not match').equals(req.body.password);

            if(password === password2){
                // TODO: input verifications

                var saltRounds = 8;
                var salt = bcrypt.genSaltSync(saltRounds);
                var hash = bcrypt.hashSync(password, salt);
                usersModel.createUser(req, res, username, hash, usertype);
            }
            else{
                //TODO: Mostrar error
                res.redirect("/users");
            }
        }
        /*if(errors){
              //TODO: Mostrar error
            }
            else{
              if(password === password2){ // SACAR ESTO
                // TODO: input verifications
                //usersModel.createUser(req, res, username, hash, usertype);
                usersModel.createUser(req, res, username, password, usertype);
              }
              else{ // SACAR ESTO TAMBIEN CON LO ANTERIOR
                  //TODO: Mostrar error
                  res.redirect("/users");
              }
            }*/

        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: req.session.userData.userName, accion: "Crear usuario"});
        }
    });
});

router.get("/readByType/:type", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        if(req.session.userData.usertype > 0 && req.session.userData.usertype <= 3){
            usersModel.sendUsersByType(req, res, req.params.type);
        }
        else{
            res.redirect("/");
        }
    });
});

router.get("/", function(req, res){
    res.redirect('/');
});

module.exports = router;
