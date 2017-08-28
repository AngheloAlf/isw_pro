function range(i, j, k){
    var z = i;
    var asd = [];
    while(z < j){
        asd.push(z);
        z += k;
    }
    return asd;
}

angular.module("app", ["chart.js"]).controller("MixedChartCtrlSocial", function ($scope, $http){
    $scope.yearsMonth = [[1, "Enero"], [2, "Febrero"], [3, "Marzo"], [4, "Abril"], [5, "Mayo"], [6, "Junio"], [7, "Julio"], [8, "Agosto"], [9, "Septiembre"], [10, "Octubre"], [11, "Noviembre"], [12, "Diciembre"]];

    var years = [2017, 2018, 2019, 2020, 2021];

    $scope.years = years;

    $scope.update = function(){

        var annoDia = document.getElementById("annoDia").value;
        var mesDia = document.getElementById("mesDia").value;
        if(!mesDia){
            mesDia = 1;
        }
        if(!annoDia){
            annoDia = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia+"/"+mesDia+"/socail").then(function(response){
            $scope.dataDia = [
                //response.data,
                response.data

            ];

            if(mesDia===1 || mesDia===3 || mesDia===5 || mesDia===7 || mesDia===8 || mesDia===10 || mesDia===12){
                $scope.labelsDia = range(1, 32, 1);
            }
            else if(mesDia===4 || mesDia===6 || mesDia===9 || mesDia===11){
                $scope.labelsDia = range(1, 32, 1);
            }
            else{
                if(annoDia%4===0){

                }
            }

        });

        var annoSemana = document.getElementById("annoSemana").value;
        if(!annoSemana){
            annoSemana = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana+"/socail").then(function(response){
            $scope.dataSemana = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana = range(1, 53, 1);
        });

        var annoMes = document.getElementById("annoMes").value;
        if(!annoMes){
            annoMes = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes+"/socail").then(function(response){
            $scope.dataMes = [
                response.data
            ];

            $scope.labelsMes = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre = document.getElementById("annoTrimestre").value;
        if(!annoTrimestre){
            annoTrimestre = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre+"/socail").then(function(response){
            $scope.dataTrimestre = [
                response.data
            ];

            $scope.labelsTrimestre = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre = document.getElementById("annoSemestre").value;
        if(!annoSemestre){
            annoSemestre = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre+"/socail").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre = [
                Data
            ];

            $scope.labelsSemestre = ["Primero", "Segundo", ""];
        });

        var annoYear = document.getElementById("annoYear").value;
        if(!annoYear){
            annoYear = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear+"/socail").then(function(response){
            var Data = response.data;
            $scope.dataYear = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear; i<(parseInt(annoYear)+5); i++){
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
