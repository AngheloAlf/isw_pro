/**
 * Created by Anghelo on 02-05-2017.
 */

var express = require("express");
var router = express.Router();

var common = require("./common");

var path = require("path");

router.all("/:projectId/:downloadFile", function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var usertype = req.session.userData.usertype;
        var username = req.session.userData.userName;
        if(usertype < 3 && usertype >= 0){
            var filename = req.params.downloadFile;
            var projectId = req.params.projectId;
            var fileFolder = path.resolve(".", "public", "ticketsFiles", projectId, filename);
            res.download(fileFolder, filename, function(err){
                if(err){
                    //TODO: show error
                }
                else{
                    //Descarga correcta
                }
            });
        }
        else{
            res.render('noPermissionsError', {title: 'No tienes permisos', username: username, accion: "Descargar archivo", usertype: usertype});
        }
    });
});

module.exports = router;
