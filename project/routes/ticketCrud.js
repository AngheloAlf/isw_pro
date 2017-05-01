/**
 * Created by Anghelo on 28-04-2017.
 */

var express = require("express");
var router = express.Router();
var common = require("./common");

var ticketsModel = require("../models/tickets");

/* create ticket */
router.post('/create', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        if(usertype < 3){
            var datetime = new Date();
            var date = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate() + " " + datetime.getUTCHours()+":" + datetime.getUTCMinutes()+":" + datetime.getUTCSeconds();

            var userId = req.session.userData.userID;
            var fuente = req.body.fuente;
            var ip_origen = req.body.ip_origen;
            var ip_destino = req.body.ip_destino;
            var puerto = req.body.puerto;
            var protocolo = req.body.protocolo;
            var tipo = req.body.tipo;
            var intencionalidad = req.body.intencionalidad;
            var subarea = req.body.subarea;
            var sistema_seguridad = req.body.sistema_seguridad;
            var fecha_operacion = req.body.fecha_operacion;
            var comentarios = req.body.comentarios;
            var correo_origen = req.body.correo_origen;
            var correo_afectado = req.body.correo_afectado;

            // TODO: input verifications
            ticketsModel.createTicket(req, res, userId, date, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado);
            res.redirect("/users");
        }
        else{
            var username = req.session.userData.userName;
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear ticket", usertype: usertype});
        }
    });
});

/* view ticket */
router.get("/read", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        if(usertype < 3){
            ticketsModel.sendAllTickets(req, res);
        }
        else{
            var username = req.session.userData.userName;
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear ticket", usertype: usertype});
        }
    });
});

router.get("/read/:ticketId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        if(usertype < 3){
            ticketsModel.sendTicketById(req, res, req.params.ticketId);
        }
        else{
            var username = req.session.userData.userName;
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear ticket", usertype: usertype});
        }
    });
});

router.post("/assign", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        if(usertype < 3 &&usertype > 0){
            ticketsModel.assignTicket(req, res, req.body.ticketId, req.body.operadorId);
        }
        else{
            var username = req.session.userData.userName;
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Asignar ticket", usertype: usertype});
        }
    });
});


router.post("/delete", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        if(usertype === 1){
            ticketsModel.deleteTicket(req, res, req.body.ticketId);
        }
        else{
            var username = req.session.userData.userName;
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Eliminar ticket", usertype: usertype});
        }
    });
});

router.all("/", function(req, res){
    /* Si la direccion es localhost/ticketCrud/ se redirecciona a localhost/ */
    res.redirect('/');
});

router.get("/readByUser/:userId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        if(usertype === 0){
            ticketsModel.sendTicketsByUser(req, res, req.params.userId);
        }
        else{
            var username = req.session.userData.userName;
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Ver tus tickets asignados", usertype: usertype});
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
