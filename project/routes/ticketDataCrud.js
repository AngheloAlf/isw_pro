/**
 * Created by Anghelo on 02-05-2017.
 */

var express = require("express");
var router = express.Router();

var common = require("./common");

var ticketData = require("../models/ticketData");

var path = require("path");

router.post("/create", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        if(usertype < 3 && usertype >= 0){
            //TODO: inputs verifications
            var userId = req.session.userData.userID;
            var ticketDataText = req.body.ticketData;
            var ticketId = req.body.ticketId;
            var datetime = new Date();
            var date = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate() + " " + datetime.getUTCHours()+":" + datetime.getUTCMinutes()+":" + datetime.getUTCSeconds();

            //Upload file
            var ticketFile = req.files.fileTicket; //TODO: upload file
            var pathFolder = path.resolve(".", "public", "ticketsFiles", req.body.ticketId);

            var fileName = undefined;
            if(ticketFile){
                fileName = ticketFile.name;
                mkdirp(pathFolder, function (err){
                    if(err){
                        // could not create folder
                        // TODO: show error
                    }
                    else{
                        var fileFolder = path.resolve(".", "public", "ticketsFiles", req.body.ticketId, fileName);
                        while(fs.existsSync(fileFolder)){
                            fileName = "new " + fileName;
                            console.log(fileName);
                            fileFolder = path.resolve(".", "public", "ticketsFiles", req.body.ticketId, fileName);
                        }
                        ticketFile.mv(fileFolder, function (err){
                            if(err){
                                // TODO: show error
                            }
                            else{
                                ticketData.addData(req, res, ticketId, ticketDataText, userId, date, fileName);
                            }
                        });
                    }
                });
            }
            else{
                ticketData.addData(req, res, ticketId, ticketDataText, userId, date, fileName);
            }

            res.redirect("/users/viewTickets/"+ticketId);
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Añadir datos al ticket", usertype: usertype});
        }
    });
});

router.get("/read/:ticketId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        if(usertype < 3){
            ticketData.sendTicketById(req, res, req.params.ticketId);
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Leer tickets", usertype: usertype});
        }
    });
});

router.get("/visar/:ticketId", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        if(usertype === 0){
            ticketData.visarData(req, res, req.params.ticketId);
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Leer tickets", usertype: usertype});
        }
    });
});


module.exports = router;
