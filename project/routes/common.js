/**
 * Created by Anghelo on 26-04-2017.
 */

//Test if the user is connected
exports.verificateLogin = function(req, res, callback){
    if(req.session.userData){ //If user is connected
        var lastTimestamp = req.session.userData.timestamp;
        var datetime = new Date();
        var actualTimestamp = datetime.getTime()/1000;
        if(lastTimestamp + 30*60 > datetime.getTime()/1000){
            req.session.userData.timestamp = actualTimestamp;
            callback(req, res);
        }
        else{
            res.redirect("/logout");
        }
    }
    else{ //else, redirects to the login interface
        res.redirect('/');
    }
};


