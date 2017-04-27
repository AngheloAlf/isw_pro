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

module.exports = router;
