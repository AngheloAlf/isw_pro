/**
 * Created by Anghelo on 02-05-2017.
 */

var app = angular.module('viewLogsLogin', []);
app.controller('viewLogsLoginCtrl', function ($scope, $http){
    $http.get("/logsLoginCrud/read").then(function (response) {
        $scope.logs_login = response.data;
    });
});