/**
 * Created by Anghelo on 30-04-2017.
 */

function invertFecha(fecha){
    var separado = fecha.split(" ");
    var separadito = separado[0].split("-").reverse().join("/");
    return separadito + " " + separado[1];
}

var app = angular.module('viewTickets', []);
app.controller('viewTicketsCtrl', function ($scope, $http) {
    $http.get("/ticketCrud/read").then(function(response){
        var ticketsData = response.data;
        ticketsData.forEach(function(value){
            $http.get("/userCrud/read/"+value.propietario).then(function(response){
                value.propietario = response.data.username;
            });

            $http.get("/userCrud/read/"+value.encargado).then(function(response){
                var username = response.data.username;
                if(username === undefined){
                    value.encargado = "No tiene encargado";
                }
                else{
                    value.encargado = response.data.username;
                }
            });

            value.fecha_creacion = invertFecha(value.fecha_creacion);
            value.fecha_operacion = invertFecha(value.fecha_operacion).split(" ")[0];
        });
        $scope.ticketsData = ticketsData;
    });
});