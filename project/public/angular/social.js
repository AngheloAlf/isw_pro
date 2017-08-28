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

        var annoDia4 = document.getElementById("annoDia4").value;
        var mesDia4 = document.getElementById("mesDia4").value;
        if(!mesDia4){
            mesDia4 = 1;
        }
        if(!annoDia){
            annoDia4 = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia4+"/"+mesDia4+"/tipo/socail").then(function(response){
            $scope.dataDia = [
                //response.data,
                response.data

            ];

            if(mesDia4===1 || mesDia4===3 || mesDia4===5 || mesDia4===7 || mesDia4===8 || mesDia4===10 || mesDia4===12){
                $scope.labelsDia = range(1, 32, 1);
            }
            else if(mesDia4===4 || mesDia4===6 || mesDia4===9 || mesDia4===11){
                $scope.labelsDia = range(1, 32, 1);
            }
            else{
                if(annoDia4%4===0){

                }
            }

        });

        var annoSemana4 = document.getElementById("annoSemana").value;
        if(!annoSemana4){
            annoSemana4 = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana4+"/tipo/socail").then(function(response){
            $scope.dataSemana = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana = range(1, 53, 1);
        });

        var annoMes4 = document.getElementById("annoMes").value;
        if(!annoMes4){
            annoMes4 = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes4+"/tipo/socail").then(function(response){
            $scope.dataMes = [
                response.data
            ];

            $scope.labelsMes = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre4 = document.getElementById("annoTrimestre").value;
        if(!annoTrimestre4){
            annoTrimestre4 = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre4+"/tipo/socail").then(function(response){
            $scope.dataTrimestre = [
                response.data
            ];

            $scope.labelsTrimestre = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre4 = document.getElementById("annoSemestre").value;
        if(!annoSemestre4){
            annoSemestre4 = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre4+"/tipo/socail").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre = [
                Data
            ];

            $scope.labelsSemestre = ["Primero", "Segundo", ""];
        });

        var annoYear4 = document.getElementById("annoYear").value;
        if(!annoYear4){
            annoYear4 = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear4+"/tipo/socail").then(function(response){
            var Data = response.data;
            $scope.dataYear = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear4; i<(parseInt(annoYear4)+5); i++){
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
