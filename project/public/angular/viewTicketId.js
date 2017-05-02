/**
 * Created by Anghelo on 30-04-2017.
 */

var app = angular.module('assignTicket', []);
app.controller('assignTicketCtrl', function ($scope, $http){
    var ticketId = document.getElementById("ticketId").innerHTML;
    var names = document.getElementsByName("ticketId");
    for(i =0; i < names.length; i++){
        names[i].value = ticketId;
    }
    $http.get("/ticketCrud/read/"+ticketId).then(function(response){
        $scope.ticketData = response.data;
    });
    $http.get("/userCrud/readByType/0").then(function(response){
        $scope.usersData = response.data;
    });
    $http.get("/ticketDataCrud/read/"+ticketId).then(function(response){
        var ticketsDataData = response.data;
        ticketsDataData.forEach(function(item){
            item.downloadPath = "/download/"+ticketId+"/"+item.filename;
        });
        $scope.ticketsDataData = ticketsDataData;
    });
});
