/**
 * Created by Anghelo on 26-04-2017.
 */

var express = require("express");
var router = express.Router();

var userModel = require("../models/users");

/* POST login. */
router.post('/', function(req, res){
    var username = req.body.username;
    var password = req.body.password;
    if(username && password){ //if username and password are set from POST, saves the session variable

        // req.checkBody('username', 'Nombre invalido').notEmpty();
        // req.checkBody('password', 'Contraseña invalida').notEmpty();

        userModel.getUser(req, res, username, password);
    }
    else{ //else, redirects to login
        res.redirect('/');
    }
});

router.get("/", function(req, res){
    res.redirect('/');
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
