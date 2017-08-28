/**
 * Created by AngheloAlf10 on 28-08-2017.
 */

var app = angular.module('createTicket', []);
app.controller('createTicketCtrl', function ($scope, $http){
    $scope.tipos = [
        ["malicioso", "Correo malicioso"],
        ["explotacion", "Explotación de vulnerabilidades"],
        ["web", "Visita sitios web maliciosos"],
        ["social", "Ingeniería social"],
        ["almacenamiento", "Dispositivos de almacenamiento"],
        ["exposicion", "Exposición"]
    ];
});