/**
 * Created by Anghelo on 02-05-2017.
 */

function timeToString(seconds){
    var horas = parseInt(seconds/(60*60));
    var minutos = parseInt(seconds/(60)) - horas*60;
    var segundos = seconds - minutos * 60 - horas*60*60;
    return horas+"h "+minutos+"m "+segundos+"s";
}

var app = angular.module('viewLogsLogin', []);
app.controller('viewLogsLoginCtrl', function ($scope, $http){
    $http.get("/logsLoginCrud/read").then(function (response){
        var logs_login = response.data;
        logs_login.forEach(function(value){
            var stripado = value.ip.split(":");
            value.ip = stripado[stripado.length - 1];

            var conn = value.conn_successful;
            if(conn === 1){
                value.conn_successful = "Si";
            }
            else{
                value.conn_successful = "No";
            }

            value.timeOnline = timeToString(value.timeOnline);
        });
        $scope.logs_login = logs_login;
    });
});