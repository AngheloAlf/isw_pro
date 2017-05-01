var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res){
    if(!req.session.userData){
        res.render('index', {title: 'Sistema de tickets'});
    }
    else{
        res.redirect("/users");
    }
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
