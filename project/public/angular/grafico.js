/**
 * Created by AngheloAlf10 on 28-08-2017.
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

angular.module("MaliciosoApp", ["chart.js"]).controller("MaliciosoCtrl", function ($scope, $http){
    $scope.yearsMonth = [[1, "Enero"], [2, "Febrero"], [3, "Marzo"], [4, "Abril"], [5, "Mayo"], [6, "Junio"], [7, "Julio"], [8, "Agosto"], [9, "Septiembre"], [10, "Octubre"], [11, "Noviembre"], [12, "Diciembre"]];

    $scope.years = [2017, 2018, 2019, 2020, 2021];

    $scope.update = function(){

        var annoDia = document.getElementById("annoDia").value;
        var mesDia = document.getElementById("mesDia").value;
        if(!mesDia){
            mesDia = 1;
        }
        if(!annoDia){
            annoDia = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia+"/"+mesDia+"/tipo/malicioso").then(function(response){
            $scope.dataDia = [
                //response.data,
                response.data

            ];

            if(mesDia==1 || mesDia==3 || mesDia==5 || mesDia==7 || mesDia==8 || mesDia==10 || mesDia==12){
                $scope.labelsDia = range(1, 32, 1);
            }
            else {
                if (mesDia == 4 || mesDia == 6 || mesDia == 9 || mesDia == 11) {
                    $scope.labelsDia = range(1, 31, 1);
                }
                else {
                    if (annoDia % 4 != 0) {
                        $scope.labelsDia = range(1, 29, 1);
                    }
                    else {
                        $scope.labelsDia = range(1, 30, 1);
                    }
                }
            }

        });

        var annoSemana = document.getElementById("annoSemana").value;
        if(!annoSemana){
            annoSemana = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana+"/tipo/malicioso").then(function(response){
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
        $http.get("/ticketCrud/count/month/"+annoMes+"/tipo/malicioso").then(function(response){
            $scope.dataMes = [
                response.data
            ];

            $scope.labelsMes = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre = document.getElementById("annoTrimestre").value;
        if(!annoTrimestre){
            annoTrimestre = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre+"/tipo/malicioso").then(function(response){
            $scope.dataTrimestre = [
                response.data
            ];

            $scope.labelsTrimestre = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre = document.getElementById("annoSemestre").value;
        if(!annoSemestre){
            annoSemestre = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre+"/tipo/malicioso").then(function(response){
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
        $http.get("/ticketCrud/count/year/"+annoYear+"/tipo/malicioso").then(function(response){
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

    $scope.update2 = function(){

        var annoDia = document.getElementById("annoDia2").value;
        var mesDia = document.getElementById("mesDia2").value;
        if(!mesDia){
            mesDia = 1;
        }
        if(!annoDia){
            annoDia = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia+"/"+mesDia+"/tipo/explotacion").then(function(response){
            $scope.dataDia2 = [
                //response.data,
                response.data

            ];

            if(mesDia==1 || mesDia==3 || mesDia==5 || mesDia==7 || mesDia==8 || mesDia==10 || mesDia==12){
                $scope.labelsDia2 = range(1, 32, 1);
            }
            else {
                if (mesDia == 4 || mesDia == 6 || mesDia == 9 || mesDia == 11) {
                    $scope.labelsDia2 = range(1, 31, 1);
                }
                else {
                    if (annoDia % 4 != 0) {
                        $scope.labelsDia2 = range(1, 29, 1);
                    }
                    else {
                        $scope.labelsDia = range(1, 30, 1);
                    }
                }
            }

        });

        var annoSemana = document.getElementById("annoSemana").value;
        if(!annoSemana){
            annoSemana = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana+"/tipo/explotacion").then(function(response){
            $scope.dataSemana2 = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana2 = range(1, 53, 1);
        });

        var annoMes = document.getElementById("annoMes2").value;
        if(!annoMes){
            annoMes = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes+"/tipo/explotacion").then(function(response){
            $scope.dataMes2 = [
                response.data
            ];

            $scope.labelsMes2 = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre = document.getElementById("annoTrimestre2").value;
        if(!annoTrimestre){
            annoTrimestre = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre+"/tipo/explotacion").then(function(response){
            $scope.dataTrimestre2 = [
                response.data
            ];

            $scope.labelsTrimestre2 = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre = document.getElementById("annoSemestre2").value;
        if(!annoSemestre){
            annoSemestre = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre+"/tipo/explotacion").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre2 = [
                Data
            ];

            $scope.labelsSemestre2 = ["Primero", "Segundo", ""];
        });

        var annoYear = document.getElementById("annoYear2").value;
        if(!annoYear){
            annoYear = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear+"/tipo/explotacion").then(function(response){
            var Data = response.data;
            $scope.dataYear2 = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear; i<(parseInt(annoYear)+5); i++){
                yearsLabel.push(i)
            }

            $scope.labelsYear2 = yearsLabel;
        });
    };

    $scope.update2();

    $scope.update3 = function(){

        var annoDia = document.getElementById("annoDia3").value;
        var mesDia = document.getElementById("mesDia3").value;
        if(!mesDia){
            mesDia = 1;
        }
        if(!annoDia){
            annoDia = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia+"/"+mesDia+"/tipo/web").then(function(response){
            $scope.dataDia3 = [
                //response.data,
                response.data

            ];

            if(mesDia==1 || mesDia==3 || mesDia==5 || mesDia==7 || mesDia==8 || mesDia==10 || mesDia==12){
                $scope.labelsDia3 = range(1, 32, 1);
            }
            else {
                if (mesDia == 4 || mesDia == 6 || mesDia == 9 || mesDia == 11) {
                    $scope.labelsDia3 = range(1, 31, 1);
                }
                else {
                    if (annoDia % 4 != 0) {
                        $scope.labelsDia3 = range(1, 29, 1);
                    }
                    else {
                        $scope.labelsDia3 = range(1, 30, 1);
                    }
                }
            }

        });

        var annoSemana = document.getElementById("annoSemana3").value;
        if(!annoSemana){
            annoSemana = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana+"/tipo/web").then(function(response){
            $scope.dataSemana3 = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana3 = range(1, 53, 1);
        });

        var annoMes = document.getElementById("annoMes3").value;
        if(!annoMes){
            annoMes = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes+"/tipo/web").then(function(response){
            $scope.dataMes3 = [
                response.data
            ];

            $scope.labelsMes3 = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre = document.getElementById("annoTrimestre3").value;
        if(!annoTrimestre){
            annoTrimestre = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre+"/tipo/web").then(function(response){
            $scope.dataTrimestre3 = [
                response.data
            ];

            $scope.labelsTrimestre3 = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre = document.getElementById("annoSemestre3").value;
        if(!annoSemestre){
            annoSemestre = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre+"/tipo/web").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre3 = [
                Data
            ];

            $scope.labelsSemestre3 = ["Primero", "Segundo", ""];
        });

        var annoYear = document.getElementById("annoYear3").value;
        if(!annoYear){
            annoYear = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear+"/tipo/web").then(function(response){
            var Data = response.data;
            $scope.dataYear3 = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear; i<(parseInt(annoYear)+5); i++){
                yearsLabel.push(i)
            }

            $scope.labelsYear3 = yearsLabel;
        });
    };

    $scope.update3();

    $scope.update4 = function(){

        var annoDia4 = document.getElementById("annoDia4").value;
        var mesDia4 = document.getElementById("mesDia4").value;
        if(!mesDia4){
            mesDia4 = 1;
        }
        if(!annoDia4){
            annoDia4 = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia4+"/"+mesDia4+"/tipo/social").then(function(response){
            $scope.dataDia4 = [
                //response.data,
                response.data

            ];

            if(mesDia4==1 || mesDia4==3 || mesDia4==5 || mesDia4==7 || mesDia4==8 || mesDia4==10 || mesDia4==12){
                $scope.labelsDia4 = range(1, 32, 1);
            }
            else {
                if (mesDia4 == 4 || mesDia4 == 6 || mesDia4 == 9 || mesDia4 == 11) {
                    $scope.labelsDia4 = range(1, 31, 1);
                }
                else {
                    if (annoDia4 % 4 != 0) {
                        $scope.labelsDia4 = range(1, 29, 1);
                    }
                    else {
                        $scope.labelsDia4 = range(1, 30, 1);
                    }
                }
            }

        });

        var annoSemana4 = document.getElementById("annoSemana4").value;
        if(!annoSemana4){
            annoSemana4 = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana4+"/tipo/social").then(function(response){
            $scope.dataSemana4 = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana4 = range(1, 53, 1);
        });

        var annoMes4 = document.getElementById("annoMes").value;
        if(!annoMes4){
            annoMes4 = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes4+"/tipo/social").then(function(response){
            $scope.dataMes4 = [
                response.data
            ];

            $scope.labelsMes4 = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre4 = document.getElementById("annoTrimestre4").value;
        if(!annoTrimestre4){
            annoTrimestre4 = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre4+"/tipo/social").then(function(response){
            $scope.dataTrimestre4 = [
                response.data
            ];

            $scope.labelsTrimestre4 = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre4 = document.getElementById("annoSemestre4").value;
        if(!annoSemestre4){
            annoSemestre4 = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre4+"/tipo/social").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre4 = [
                Data
            ];

            $scope.labelsSemestre4 = ["Primero", "Segundo", ""];
        });

        var annoYear4 = document.getElementById("annoYear4").value;
        if(!annoYear4){
            annoYear4 = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear4+"/tipo/social").then(function(response){
            var Data = response.data;
            $scope.dataYear4 = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear4; i<(parseInt(annoYear4)+5); i++){
                yearsLabel.push(i)
            }

            $scope.labelsYear4 = yearsLabel;
        });
    };

    $scope.update4();

    $scope.update5 = function(){

        var annoDia5 = document.getElementById("annoDia5").value;
        var mesDia5 = document.getElementById("mesDia5").value;
        if(!mesDia5){
            mesDia5 = 1;
        }
        if(!annoDia5){
            annoDia5 = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia5+"/"+mesDia5+"/tipo/almacenamiento").then(function(response){
            $scope.dataDia5 = [
                //response.data,
                response.data

            ];

            if(mesDia5==1 || mesDia5==3 || mesDia5==5 || mesDia5==7 || mesDia5==8 || mesDia5==10 || mesDia5==12){
                $scope.labelsDia5 = range(1, 32, 1);
            }
            else {
                if (mesDia5 == 4 || mesDia5 == 6 || mesDia5 == 9 || mesDia5 == 11) {
                    $scope.labelsDia5 = range(1, 31, 1);
                }
                else {
                    if (annoDia5 % 4 != 0) {
                        $scope.labelsDia5 = range(1, 29, 1);
                    }
                    else {
                        $scope.labelsDia5 = range(1, 30, 1);
                    }
                }
            }

        });

        var annoSemana5 = document.getElementById("annoSemana5").value;
        if(!annoSemana5){
            annoSemana5 = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana5+"/tipo/almacenamiento").then(function(response){
            $scope.dataSemana5 = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana5 = range(1, 53, 1);
        });

        var annoMes5 = document.getElementById("annoMes5").value;
        if(!annoMes5){
            annoMes5 = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes5+"/tipo/almacenamiento").then(function(response){
            $scope.dataMes5 = [
                response.data
            ];

            $scope.labelsMes5 = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre5 = document.getElementById("annoTrimestre5").value;
        if(!annoTrimestre5){
            annoTrimestre5 = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre5+"/tipo/almacenamiento").then(function(response){
            $scope.dataTrimestre5 = [
                response.data
            ];

            $scope.labelsTrimestre5 = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre5 = document.getElementById("annoSemestre5").value;
        if(!annoSemestre5){
            annoSemestre5 = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre5+"/tipo/almacenamiento").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre5 = [
                Data
            ];

            $scope.labelsSemestre5 = ["Primero", "Segundo", ""];
        });

        var annoYear5 = document.getElementById("annoYear5").value;
        if(!annoYear5){
            annoYear5 = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear5+"/tipo/almacenamiento").then(function(response){
            var Data = response.data;
            $scope.dataYear5 = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear5; i<(parseInt(annoYear5)+5); i++){
                yearsLabel.push(i)
            }

            $scope.labelsYear5 = yearsLabel;
        });
    };

    $scope.update5();

    $scope.update6 = function(){

        var annoDia = document.getElementById("annoDia6").value;
        var mesDia = document.getElementById("mesDia6").value;
        if(!mesDia){
            mesDia = 1;
        }
        if(!annoDia){
            annoDia = 2017;
        }

        $http.get("/ticketCrud/count/day/"+annoDia+"/"+mesDia+"/tipo/exposicion").then(function(response){
            $scope.dataDia6 = [
                //response.data,
                response.data

            ];

            if(mesDia==1 || mesDia==3 || mesDia==5 || mesDia==7 || mesDia==8 || mesDia==10 || mesDia==12){
                $scope.labelsDia6 = range(1, 32, 1);
            }
            else {
                if (mesDia == 4 || mesDia == 6 || mesDia == 9 || mesDia == 11) {
                    $scope.labelsDia6 = range(1, 31, 1);
                }
                else {
                    if (annoDia % 4 != 0) {
                        $scope.labelsDia6 = range(1, 29, 1);
                    }
                    else {
                        $scope.labelsDia6 = range(1, 30, 1);
                    }
                }
            }

        });

        var annoSemana = document.getElementById("annoSemana6").value;
        if(!annoSemana){
            annoSemana = 2017;
        }
        $http.get("/ticketCrud/count/week/"+annoSemana+"/tipo/exposicion").then(function(response){
            $scope.dataSemana6 = [
                //response.data,
                response.data

            ];

            $scope.labelsSemana6 = range(1, 53, 1);
        });

        var annoMes = document.getElementById("annoMes6").value;
        if(!annoMes){
            annoMes = 2017;
        }
        $http.get("/ticketCrud/count/month/"+annoMes+"/tipo/exposicion").then(function(response){
            $scope.dataMes6 = [
                response.data
            ];

            $scope.labelsMes6 = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        });

        var annoTrimestre = document.getElementById("annoTrimestre6").value;
        if(!annoTrimestre){
            annoTrimestre = 2017;
        }
        $http.get("/ticketCrud/count/trimestre/"+annoTrimestre+"/tipo/exposicion").then(function(response){
            $scope.dataTrimestre6 = [
                response.data
            ];

            $scope.labelsTrimestre6 = ["Primero", "Segundo", "Tercero", "Cuarto"];
        });

        var annoSemestre = document.getElementById("annoSemestre6").value;
        if(!annoSemestre){
            annoSemestre = 2017;
        }
        $http.get("/ticketCrud/count/semestre/"+annoSemestre+"/tipo/exposicion").then(function(response){
            var Data = response.data;
            Data.push(0);
            $scope.dataSemestre6 = [
                Data
            ];

            $scope.labelsSemestre6 = ["Primero", "Segundo", ""];
        });

        var annoYear = document.getElementById("annoYear6").value;
        if(!annoYear){
            annoYear = 2017;
        }
        $http.get("/ticketCrud/count/year/"+annoYear+"/tipo/exposicion").then(function(response){
            var Data = response.data;
            $scope.dataYear6 = [
                Data
            ];

            var yearsLabel = [];
            for(var i = annoYear; i<(parseInt(annoYear)+5); i++){
                yearsLabel.push(i)
            }

            $scope.labelsYear6 = yearsLabel;
        });
    };

    $scope.update6();

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
