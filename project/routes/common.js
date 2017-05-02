/**
 * Created by Anghelo on 26-04-2017.
 */

exports.tiposDeUsuario = {0: "Operador", 1: "Supervisor", 2: "Jefe", 3: "Administrador"};

//Verifica que el usuario haya iniciado sesion
exports.verificateLogin = function(req, res, callback){
    if(req.session.userData){ //If user is connected
        //Verifica si han pasado 30 mins desde su ultima interaccion con la pagina
        var lastTimestamp = req.session.userData.timestamp;
        var datetime = new Date();
        var actualTimestamp = datetime.getTime()/1000;
        if(lastTimestamp + 30*60 > datetime.getTime()/1000){
            // Si todavia no excede su tiempo maximo, este se resetea y se ejecuta la funcion que se entrego como parametro
            req.session.userData.timestamp = actualTimestamp;
            callback(req, res);
        }
        else{
            // Si se ha pasado del tiempo maximo, se desconecta
            res.redirect("/logout");
        }
    }
    else{ //else, redirects to the login interface
        res.redirect('/');
    }
};



