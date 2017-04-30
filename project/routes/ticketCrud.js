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
        if(req.session.userData.usertype < 3){
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
            ticketsModel.createTicket(req, res, userId, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado);
            res.redirect("/users");
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear ticket"});
        }
    });
});

/* view ticket */
router.get("/read", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        if(req.session.userData.usertype < 3){
            ticketsModel.sendAllTickets(req, res);
        }
        else{
            var username = req.session.userData.userName;
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Crear ticket"});
        }
    });
});

router.get("/", function(req, res){
    res.redirect('/');
});

module.exports = router;
