/**
 * Created by Anghelo on 01-05-2017.
 */

var app = angular.module('viewMyTickets', []);
app.controller('viewMyTicketsCtrl', function ($scope, $http){
    var userId = document.getElementById("userId").innerHTML;
    $http.get("/ticketCrud/readByUser/"+userId)
        .then(function(response){
            $scope.ticketsData = response.data;
        });
});
