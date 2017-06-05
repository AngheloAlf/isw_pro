/**
 * Created by Anghelo on 18-05-2017.
 */

function reverseOnlyDate(fecha){
    return fecha.split("-").reverse().join("/");
}

function invertFecha(fecha){
    var separado = fecha.split(" ");
    //var separadito = separado[0].split("-").reverse().join("/");
    return reverseOnlyDate(separado[0]) + " " + separado[1];
}


var app = angular.module('viewNotifications', []);
app.controller('viewNotificationsCtrl', function ($scope, $http) {
    $http.get("/notificationsCrud/read").then(function(response){

        var notificationsData = response.data;

        notificationsData.forEach(function(value){
            value.fecha = invertFecha(value.fecha);
            $http.get("/userCrud/read/"+value.userCreator).then(function(response){
                value.userCreator = response.data.username;
            });
        });

        $scope.notificationsData = notificationsData;

        setTimeout(function(){
            notificationsData.forEach(function(value){
                if(value.accepted === 1){
                    document.getElementById("show"+value.id).innerHTML = "Aceptado";
                }
            });
        }, 250);

        $scope.acceptNotification = function(event){
            $http.get("/notificationsCrud/accept/"+event.target.id).then(function(response){
                if(response.data === "OK"){
                    document.getElementById("show"+event.target.id).innerHTML = "Aceptado";
                }
                else{
                    alert("Ha ocurrido un problema aceptando la notificacion.\nIntentelo mas tarde");
                }
            });
        };

    });
});
