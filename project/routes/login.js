/**
 * Created by Anghelo on 26-04-2017.
 */

var express = require("express");
var router = express.Router();
var bcrypt = require('bcrypt');

var userModel = require("../models/users");

/* POST login. */
router.post('/', function(req, res){
    if(req.body.username && req.body.password){ //if username and password are set from POST, saves the session variable
        var username = req.body.username;
        var password = req.body.password;
        //var hash = bcrypt.hashSync(password);

        userModel.getUser(req, res, username, password);
        //userModel.getUser(req, res, username, hash);
    }
    else{ //else, redirects to login
        res.redirect('/');
    }
});

router.get("/", function(req, res){
    res.redirect('/');
});

module.exports = router;
