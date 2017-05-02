/**
 * Created by Anghelo on 01-05-2017.
 */

var app = angular.module('viewUsers', []);
app.controller('viewUsersCtrl', function ($scope, $http){
    $http.get("/userCrud/read")
        .then(function(response){
            var tiposDeUsuarios = {0: "Operador", 1: "Supervisor", 2: "Jefe"};
            var data = response.data;
            for(var i = 0; i < data.length; i++){
                data[i].usertype = tiposDeUsuarios[data[i].usertype];
            }
            $scope.usersData = data;
        });
});