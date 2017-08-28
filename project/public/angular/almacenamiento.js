function range(i, j, k){
    var z = i;
    var asd = [];
    while(z < j){
        asd.push(z);
        z += k;
    }
    return asd;
}

angular.module("app", ["chart.js"]).controller("MixedChartCtrlAlmacenamiento", function ($scope, $http){
    $scope.yearsMonth = [[1, "Enero"], [2, "Febrero"], [3, "Marzo"], [4, "Abril"], [5, "Mayo"], [6, "Junio"], [7, "Julio"], [8, "Agosto"], [9, "Septiembre"], [10, "Octubre"], [11, "Noviembre"], [12, "Diciembre"]];

    var years = [2017, 2018, 2019, 2020, 2021];

    $scope.years = years;

    $scope.update = function(){

        var annoDia5 = document.getElementById("annoDia").value;
        var mesDia5 = document.getElementById("mesDia").value;
        if(!mesDia5){
            mesDia5 = 1;
        }
        if(!annoDia5){
            annoDia5 = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia5+"/"+mesDia5+"/tipo/almacenamiento").then(function(response){
            $scope.dataDia = [
                //response.data,
                response.data

            ];

            if(mesDia5===1 || mesDia5===3 || mesDia5===5 || mesDia5===7 || mesDia5===8 || mesDia5===10 || mesDia5===12){
                $scope.labelsDia = range(1, 32, 1);
            }
            else if(mesDia5===4 || mesDia5===6 || mesDia5===9 || mesDia5===11){
                $scope.labelsDia = range(1, 32, 1);
            }
            else{
                if(annoDia5%4===0){

                }
            }

        });

        var annoSemana5 = document.getElementById("annoSemana").value;
        if(!annoSemana5){
            annoSemana5 = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana5+"/tipo/almacenamiento").then(function(response){
            $scope.dataSemana = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana = range(1, 53, 1);
        });

        var annoMes5 = document.getElementById("annoMes").value;
        if(!annoMes5){
            annoMes5 = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes5+"/tipo/almacenamiento").then(function(response){
            $scope.dataMes = [
                response.data
            ];

            $scope.labelsMes = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre5 = document.getElementById("annoTrimestre").value;
        if(!annoTrimestre5){
            annoTrimestre5 = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre5+"/tipo/almacenamiento").then(function(response){
            $scope.dataTrimestre = [
                response.data
            ];

            $scope.labelsTrimestre = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre5 = document.getElementById("annoSemestre").value;
        if(!annoSemestre5){
            annoSemestre5 = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre5+"/tipo/almacenamiento").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre = [
                Data
            ];

            $scope.labelsSemestre = ["Primero", "Segundo", ""];
        });

        var annoYear5 = document.getElementById("annoYear").value;
        if(!annoYear5){
            annoYear5 = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear5+"/tipo/almacenamiento").then(function(response){
            var Data = response.data;
            $scope.dataYear = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear5; i<(parseInt(annoYear5)+5); i++){
                yearsLabel.push(i)
            }

            $scope.labelsYear = yearsLabel;
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
