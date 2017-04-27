/**
 * Created by Anghelo on 26-04-2017.
 */

var express = require('express');
var router = express.Router();

//Destroys the session
router.get('/', function(req, res) {
    if(req.body.submitButton == 'log_out'){
        req.session.destroy();
    }
    else{
        console.log("error");
        console.log(req.body.submitButton);
    }
    res.redirect('/');
});

