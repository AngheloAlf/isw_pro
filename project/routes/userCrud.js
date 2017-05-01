/**
 * Created by Anghelo on 28-04-2017.
 */

var express = require("express");
var router = express.Router();
var common = require("./common");
var bcrypt = require('bcrypt');
var util = require('util');

var usersModel = require("../models/users");

/* create ticket */
router.post('/create', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        if(req.session.userData.usertype === 3){
            var username = req.body.username;
            var password = req.body.password;
            var password2 = req.body.password2;
            var usertype = req.body.usertype;

            req.checkBody('username', 'Nombre invalido').notEmpty();
            req.checkBody('usertype', 'Tipo de usuario invalido').notEmpty(); // REVISAR ESTA PARTE CON EL FORMULARIO
            req.checkBody('password', 'Contraseña invalida').notEmpty();
            req.checkBody('password2', 'Contraseñas no coinciden').equals(req.body.password);

            req.getValidationResult().then(function(result){
                if(!result.isEmpty()){
                    res.render("validationError", {title: 'Administrador', username: req.session.userData.userName, usertype: req.session.userData.usertype, errores: result.array(), mensaje: "Error al crear al usuario"});
                    //console.log(util.inspect(result.array()));
                }
                else{
                    var saltRounds = 8;
                    var salt = bcrypt.genSaltSync(saltRounds);
                    var hash = bcrypt.hashSync(password, salt);
                    usersModel.createUser(req, res, username, hash, usertype);
                }
            });

            /*
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
            }*/
        }
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



router.all("*/stylesheets/:sheets", function(req, res){
    res.redirect("/stylesheets/" + req.params.sheets);
});
router.all("*/js/:js", function(req, res){
    res.redirect("/js/" + req.params.js);
});
router.all("*/angular/:angularjs", function(req, res){
    res.redirect("/angular/" + req.params.angularjs);
});
router.all("*/static/:static", function(req, res){
    res.redirect("/static/" + req.params.static);
});

module.exports = router;
