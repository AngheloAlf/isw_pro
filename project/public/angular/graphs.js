/**
 * Created by Anghelo on 06-06-2017.
 */

function range(i, j, k){
    var z = i;
    var asd = [];
    while(z < j){
        asd.push(z);
        z += k;
    }
    return asd;
}

angular.module("app", ["chart.js"]).controller("MixedChartCtrl", function ($scope, $http){
    $scope.yearsMonth = [[1, "Enero"], [2, "Febrero"], [3, "Marzo"], [4, "Abril"], [5, "Mayo"], [6, "Junio"], [7, "Julio"], [8, "Agosto"], [9, "Septiembre"], [10, "Octubre"], [11, "Noviembre"], [12, "Diciembre"]];


    $scope.update = function(){

        $http.get("/ticketCrud/count/week/2017").then(function(response){
            $scope.dataSemana = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana = range(0, 53, 1);
        });

        var annoDia = document.getElementById("annoDia").value;
        var mesDia = document.getElementById("mesDia").value;
        if(!mesDia){
            mesDia = 1;
        }
        if(!annoDia){
            annoDia = 2017;
        }
        $http.get("/ticketCrud/count/day/"+annoDia+"/"+mesDia).then(function(response){
            $scope.dataDia = [
                //response.data,
                response.data

            ];

            $scope.labelsDia = range(1, 32, 1);
        });
    };

    $scope.update();

    $scope.colors = ['#45b7cd', '#ff6384', '#ff8e72'];

    $scope.datasetOverride = [
        {
            label: "Bar chart",
            borderWidth: 1,
            type: 'bar'
        }/*,
        {
            label: "Line chart",
            borderWidth: 3,
            hoverBackgroundColor: "rgba(255,99,132,0.4)",
            hoverBorderColor: "rgba(255,99,132,1)",
            type: 'line'
        }*/
    ];
});