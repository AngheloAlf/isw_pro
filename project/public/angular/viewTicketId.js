/**
 * Created by Anghelo on 30-04-2017.
 */

function reverseOnlyDate(fecha){
    return fecha.split("-").reverse().join("/");
}

function invertFecha(fecha){
    var separado = fecha.split(" ");
    //var separadito = separado[0].split("-").reverse().join("/");
    return reverseOnlyDate(separado[0]) + " " + separado[1];
}

function todayLessDate(fecha){
    // fecha como AAAA-MM-DD
    fecha = fecha.split("-").join("/");
    today = new Date();
    fechaDay = new Date(fecha);

    console.log(today.getYear()+"/"+(today.getMonth()+1)+"/"+today.getDate());
    console.log(fecha);

    return Date.parse(today.getYear()+"/"+(today.getMonth()+1)+"/"+today.getDate()) - Date.parse(fecha);
}

var app = angular.module('assignTicket', []);
app.controller('assignTicketCtrl', function ($scope, $http){
    var ticketId = document.getElementById("ticketId").innerHTML;
    var names = document.getElementsByName("ticketId");
    for(i =0; i < names.length; i++){
        names[i].value = ticketId;
    }

    $http.get("/ticketCrud/read/"+ticketId).then(function(response){
        var ticketData = response.data;
        if(ticketData.eliminado === 1){
            document.getElementById("de-delete").removeAttribute("disabled");
        }

        ticketData.dias_transcurridos = todayLessDate(ticketData.fecha_creacion);

        ticketData.fecha_operacion = ticketData.fecha_operacion.split(" ")[0];

        ticketData.fecha_creacion = invertFecha(ticketData.fecha_creacion);

        $http.get("/userCrud/read/"+ticketData.propietario).then(function(response){
            ticketData.propietario = response.data.username;
        });
        $http.get("/userCrud/read/"+ticketData.encargado).then(function(response){
            ticketData.encargado = response.data.username;
        });

        if(ticketData.eliminado === 0){
            ticketData.eliminado = "No";
        }
        else{
            ticketData.eliminado = "Si";
        }

        if(ticketData.eliminado_por !== null){
            $http.get("/userCrud/read/"+ticketData.eliminado_por).then(function(response){
                ticketData.eliminado_por = response.data.username;
            });
        }
        else{
            ticketData.eliminado_por = "El ticket no ha sido eliminado.";
        }

        $scope.ticketData = ticketData;
    });

    $http.get("/userCrud/readByType/0").then(function(response){
        $scope.usersData = response.data;
    });

    $http.get("/ticketDataCrud/read/"+ticketId).then(function(response){
        var ticketsDataData = response.data;
        ticketsDataData.forEach(function(item){
            item.downloadPath = "/download/"+ticketId+"/"+item.filename;

            if(item.aceptado === 0){
                item.aceptado = "No";
            }
            else{
                item.aceptado = "Si";
            }

            $http.get("/userCrud/read/"+item.userId).then(function(response){
                item.userId = response.data.username;
            });

            item.fecha = invertFecha(item.fecha);

        });
        setTimeout(function(){
            ticketsDataData.forEach(function(value){
                if(value.aceptado === "Si"){
                    document.getElementById("show"+value.id).innerHTML = "Visado";
                }
            });
        }, 250);
        $scope.ticketsDataData = ticketsDataData;

        $scope.visar = function(event){
            $http.get("/ticketDataCrud/visar/"+event.target.id).then(function(response){
                if(response.data === "OK"){
                    document.getElementById("show"+event.target.id).innerHTML = "Visado";
                }
                else{
                    alert("Ha ocurrido un problema visando el antecedente.\nIntentelo mas tarde");
                }
            });
        };

    });
});
