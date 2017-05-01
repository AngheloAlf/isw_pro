var express = require("express");
var router = express.Router();

var common = require("./common");

var tiposDeUsuario = {0: "Operador", 1: "Supervisor", 2: "Jefe", 3: "Administrador"};

/* Pagina principal */
router.all('/', function(req, res){
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
router.all('/createTicket', function(req, res){
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

router.all("/viewTickets", function(req, res){
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

router.all("/createUser", function(req, res){
    common.verificateLogin(req, res, function(req, res) {
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 3){
            res.render('createUser', {title: 'Admin', username: username, usertype: usertype});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear usuario"});
        }
    });
});

router.all("/viewTickets/:ticketId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;
        var ticketId = req.params.ticketId;

        if(usertype === 0){
            res.render('viewTicketId', {title: 'Operador', username: username, ticketId: ticketId, usertype: usertype});
        }
        if(usertype === 1){
            res.render('viewTicketId', {title: 'Supervisor', username: username, ticketId: ticketId, usertype: usertype});
        }
        else if(usertype === 2){
            res.render('viewTicketId', {title: 'Jefe', username: username, ticketId: ticketId, usertype: usertype});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Designar encargado de ticket"});
        }
    });
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
