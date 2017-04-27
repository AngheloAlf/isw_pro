/**
 * Created by Anghelo on 26-04-2017.
 */

//Test if the user is connected
exports.verificateLogin = function(req, res, callback){
    if(req.session.userData){ //If user is connected
        callback(req, res);
    }
    else{ //else, redirects to the login interface
        res.redirect('/');
    }
};


