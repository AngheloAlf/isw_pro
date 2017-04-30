/**
 * Created by Anghelo on 30-04-2017.
 */

var app = angular.module('assignTickets', []);
app.controller('assignTicketsCtrl', function ($scope, $http){
    var ticketId = document.getElementById("ticketId").innerHTML;
    $http.get("/ticketCrud/read/"+ticketId)
        .then(function(response){
            $scope.ticketsData = response.data;
        });
    $http.get("/userCrud/readByType/0")
        .then(function(response){
            console.log(response);
            $scope.usersData = response.data;
        });
});
