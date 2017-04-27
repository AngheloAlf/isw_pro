var express = require('express');
var router = express.Router();
var common = require("./common");

/* GET users listing. */
router.get('/', function(req, res){
    common.verificateLogin(req, res, function(req, res){
        var username = req.session.userData.userName;
        var usertype = req.session.userData.usertype;

        if(usertype == 0){
            res.send('hi ' + username + "<br> Operador");
        }
        else if(usertype == 1){
            res.send('hi ' + username + "<br> Supervisor");
        }
        else if(usertype == 2){
            res.send('hi ' + username + "<br> Jefe");
        }
        else if(usertype == 3){
            res.send('hi ' + username + "<br> Administrador");
        }
    });
});

module.exports = router;
