/**
 * Created by Anghelo on 26-04-2017.
 */

var express = require("express");
var router = express.Router();

var userModel = require("../models/users");

/* POST login. */
router.post('/', function(req, res){
    if(req.body.username && req.body.password){ //if username and password are set from POST, saves the session variable
        var username = req.body.username;
        var password = req.body.password;

        userModel.getUser(req, res, username, password);
    }
    else{ //else, redirects to login
        res.redirect('/');
    }
});

router.get("/", function(req, res){
    res.redirect('/');
});

module.exports = router;
