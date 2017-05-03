/**
 * Created by Anghelo on 02-05-2017.
 */

function timeToText(seconds){
    var horas = parseInt(seconds/(60*60));
    var minutos = parseInt(seconds/(60)) - horas*60;
    var segundos = seconds - minutos * 60 - horas*60*60;
    return horas+"h "+minutos+"m "+segundos+"s";
}

function connToText(conn){
    if(conn === 1){
        return "Si";
    }
    else{
        return "No";
    }
}

function ipv6ToIpv4(ip){
    var stripado = ip.split(":");
    return stripado[stripado.length - 1];
}

function invertFecha(fecha){
    var separado = fecha.split(" ");
    var separadito = separado[0].split("-").reverse().join("/");
    return separadito + " " + separado[1];
}

function parseLog(log){
    log.ip = ipv6ToIpv4(log.ip);
    log.conn_successful = connToText(log.conn_successful);
    log.timeOnline = timeToText(log.timeOnline);
    log.date = invertFecha(log.date);
    return log;
}

var app = angular.module('viewLogsLogin', []);
app.controller('viewLogsLoginCtrl', function ($scope, $http){
    function everyone(){
        $http.get("/logsLoginCrud/read").then(function (response){
            var logs_login = response.data;
            logs_login.forEach(function(value){
                parseLog(value);
            });
            $scope.logs_login = logs_login;
        });
    }
    everyone();

    $http.get("/userCrud/read").then(function (response){
        $scope.usersData = response.data;
    });

    $scope.updateLogs = function(){
        var userSelected = document.getElementById("userSelected").value;
        if(userSelected === "0"){
            everyone();
        }
        else {
            $http.get("/logsLoginCrud/readByUser/" + userSelected).then(function(response){
                var logs_login = response.data;
                logs_login.forEach(function (value) {
                    parseLog(value);
                });
                $scope.logs_login = logs_login;
            });
        }
    }
});