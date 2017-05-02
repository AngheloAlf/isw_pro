/**
 * Created by Anghelo on 26-04-2017.
 */

var express = require('express');
var router = express.Router();

function logout(req, res){
    if(req.session.userData){
        var firstTimestamp = req.session.userData.firstTimestamp;
        var datetime = new Date();
        var timeConnected = datetime.getTime() / 1000 - firstTimestamp;
        require("../models/logs_login").updateLogLogOut(req, res, req.session.userData.userID, timeConnected);

        req.session.destroy();
    }
}

router.get("/", function(req, res){
    logout(req, res);
    res.redirect("/");
});

//Destroys the session
router.post('/', function(req, res) {
    if(req.body.submitButton === 'log_out'){
        logout(req, res);
    }
    else{
        console.log("error");
        console.log(req.body.submitButton);
    }
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
