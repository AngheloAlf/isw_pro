/**
 * Created by Anghelo on 01-05-2017.
 */

function invertFecha(fecha){
    var separado = fecha.split(" ");
    var separadito = separado[0].split("-").reverse().join("/");
    return separadito + " " + separado[1];
}

var app = angular.module('viewMyTickets', []);
app.controller('viewMyTicketsCtrl', function ($scope, $http){
    var userId = document.getElementById("userId").innerHTML;
    $http.get("/ticketCrud/readByUser/"+userId).then(function(response){
        var ticketsData = response.data;
        ticketsData.forEach(function(value){
            $http.get("/userCrud/read/"+value.propietario).then(function(response){
                value.propietario = response.data.username;
            });

            value.fecha_creacion = invertFecha(value.fecha_creacion);
            value.fecha_operacion = invertFecha(value.fecha_operacion).split(" ")[0];


            if(value.fecha_aplazado > getTodayDate()){
                value.aplazado = "Aplazado hasta " + reverseOnlyDate(value.fecha_aplazado)
            }
            else{
                value.aplazado = "OK";
            }
            if(value.eliminado === 1){
                value.aplazado = "Eliminado";
            }
        });
        $scope.ticketsData = ticketsData;
    });
});
