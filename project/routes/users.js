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
            res.render('users0', {title: tiposDeUsuario[usertype], username: username, usertype: usertype});
        }
        else if(usertype === 1){
            res.render('users1', {title: tiposDeUsuario[usertype], username: username, usertype: usertype});
        }
        else if(usertype === 2){
            res.render('users2', {title: tiposDeUsuario[usertype], username: username, usertype: usertype});
        }
        else if(usertype === 3){
            res.render('users3', {title: tiposDeUsuario[usertype], username: username, usertype: usertype});
        }
    });
});

/* crear Ticket */
router.all('/createTicket', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 0 || usertype === 1 || usertype === 2){
            res.render('createTicket', {title: tiposDeUsuario[usertype], usertype: usertype, username: username});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', usertype: usertype, username: username, accion: "Crear ticket"});
        }
    });
});

router.all("/viewTickets", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 0 || usertype === 1 || usertype === 2){
            res.render('viewTicket', {title: tiposDeUsuario[usertype], usertype: usertype, username: username});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', usertype: usertype, username: username, accion: "Crear ticket"});
        }
    });
});

router.all("/createUser", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 3){
            res.render('createUser', {title: tiposDeUsuario[usertype], username: username, usertype: usertype});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', usertype: usertype, username: username, accion: "Crear usuario"});
        }
    });
});

router.all("/viewTickets/:ticketId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;
        var ticketId = req.params.ticketId;

        if(usertype === 0 || usertype === 1 || usertype === 2){
            res.render('viewTicketId', {title: tiposDeUsuario[usertype], username: username, ticketId: ticketId, usertype: usertype});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', usertype: usertype, username: username, accion: "Designar encargado de ticket"});
        }
    });
});

router.all("/viewMyTickets", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var userid = req.session.userData.userID;
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype === 0){
            res.render('viewMyTickets', {title: tiposDeUsuario[usertype], usertype: usertype, username: username, userId: userid});
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', usertype: usertype, username: username, accion: "Ver tickets asignados"});
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
