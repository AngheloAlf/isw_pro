var express = require("express");
var router = express.Router();

var common = require("./common");

/* GET users listing. */
router.get('/', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 0){
            res.render('users0', {title: 'Operador', username: username});
        }
        else if(usertype === 1){
            res.render('users1', {title: 'Supervisor', username: username});
        }
        else if(usertype === 2){
            res.render('users2', {title: 'Jefe', username: username});
        }
        else if(usertype === 3){
            res.render('users3', {title: 'Administrador', username: username});
        }
    });
});

/* crear Ticket */
router.get('/createTicket', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 0){
            res.render('createTicket', {title: 'Operador', username: username});
        }
        else if(usertype === 1){
            res.render('createTicket', {title: 'Supervisor', username: username});
        }
        else if(usertype === 2){
            res.render('createTicket', {title: 'Jefe', username: username});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear ticket"});
        }
    });
});

router.get("/viewTickets", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 0){
            res.render('viewTicket', {title: 'Operador', username: username});
        }
        else if(usertype === 1){
            res.render('viewTicket', {title: 'Supervisor', username: username});
        }
        else if(usertype === 2){
            res.render('viewTicket', {title: 'Jefe', username: username});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear ticket"});
        }
    });
});

router.get("/createUser", function(req, res){
    common.verificateLogin(req, res, function(req, res) {
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 3){
            res.render('createUser', {title: 'Admin', username: username});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear usuario"});
        }
    });
});

router.get("/stylesheets/:sheets", function(req, res){
    res.redirect("/stylesheets/" + req.params.sheets);
});

module.exports = router;
