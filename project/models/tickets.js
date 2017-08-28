/**
 * Created by Anghelo on 27-04-2017.
 */

var Db = require('./dbModel').Db;

var Tickets = Db.extend({
    tableName: "tickets"
});
exports.Tickets = Tickets;

//Returns week of the year
Date.prototype.getWeekNumber = function(){
    var d = new Date(+this);
    d.setHours(0,0,0,0);
    d.setDate(d.getDate()+4-(d.getDay()||7));
    return  Math.ceil((((d-new Date(d.getFullYear(),0,1))/8.64e7)+1)/7);
};

function range(i, j, k){
    var z = i;
    var asd = [];
    while(z < j){
        asd[z] = 0;
        z += k;
    }
    return asd;
}

exports.createTicket = function(req, res, userId, date, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado, vinculo){
    var ticketVar = new Tickets({propietario: userId, fecha_creacion: date, fuente: fuente, ip_origen: ip_origen, ip_destino: ip_destino, puerto: puerto, protocolo: protocolo, tipo: tipo, intencionalidad: intencionalidad, subarea: subarea, sistema_seguridad: sistema_seguridad, fecha_operacion: fecha_operacion, comentarios: comentarios, correo_origen: correo_origen, correo_afectado: correo_afectado, vinculo: vinculo});
    ticketVar.save()
};

exports.sendAllTickets = function(req, res, usertype){
    var tickectVar = new Tickets();
    var datetime = new Date();
    var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    var where = "(fecha_aplazado IS NULL OR fecha_aplazado BETWEEN '2017-04-30' AND '" + fecha +"')";
    //var where = "eliminado='0'";
    if(usertype !== 2){
        where += " AND eliminado='0' AND estado='0'";
    }

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows));
    });
};

exports.sendTicketById = function(req, res, ticketId){
    var tickectVar = new Tickets();
    //var datetime = new Date();
    //var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    //var where = "id='"+ticketId+"' AND (fecha_aplazado IS NULL OR fecha_aplazado BETWEEN '2017-04-30' AND '" + fecha +"')";
    var where = "id='"+ticketId+"'";

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows[0]));
    });
};

exports.assignTicket = function(req, res, ticketId, userId){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET encargado='" + userId + "' WHERE " + where;

    ticketVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            // Updated !
        }
        else{
            // Not found
        }
        res.redirect("/users");
    });
};

exports.deleteTicket = function(req, res, ticketId, userId, ticketReason){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET eliminado='1', eliminado_por='" + userId + "', eliminado_razon='" + ticketReason + "' WHERE " + where;

    ticketVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            // Updated !
        }
        else{
            // Not found
        }
        res.redirect("/users");
    });
};

exports.changeDateTicket = function(req, res, ticketId, newDate){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET fecha_aplazado='"+newDate+"' WHERE " + where;

    ticketVar.query(query, function(err, rows) {
        if (err) {
            throw err;
        }

        if (rows.changedRows === 1) {
            // Updated !
        }
        else {
            // Not found
        }
    });
};

exports.updateVinculoTicket = function(req, res, ticketId, vinculo){
    var ticketVar = new Tickets();
    var where = "id='" + vinculo + "'";
    var query = "UPDATE tickets SET vinculo='"+ticketId+"' WHERE " + where;

    ticketVar.query(query, function(err, rows) {
        if (err) {
            throw err;
        }

        if (rows.changedRows === 1) {
            // Updated !
        }
        else {
            // Not found
        }
    });
};

exports.sendTicketsByUser = function(req, res, userId){
    var tickectVar = new Tickets();
    //var datetime = new Date();
    //var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    //var where = "encargado='"+userId+"' AND (fecha_aplazado IS NULL OR fecha_aplazado BETWEEN '2017-04-30' AND '" + fecha +"')";
    var where = "encargado='"+userId+"'";

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows));
    });
};

exports.getLastTicketsByUser = function(req, res, userId, vinculo){
    var tickectVar = new Tickets();
    var where = "propietario='"+userId+"'";

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        console.log(rows[rows.length -1].id + 'hola');
        req.session.lastTicket = rows[rows.length -1].id;
        res.redirect("/ticketCrud/getLink/"+ vinculo);
    });
};

exports.de_deleteTicket = function(req, res, ticketId){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET eliminado='0' WHERE " + where;

    ticketVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            // Updated !
        }
        else{
            // Not found
        }
    });
};

exports.updateTicket = function(req, res, ticketId, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado, vinculo){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET fuente='"+fuente+"', ip_origen='"+ip_origen+"',ip_destino='"+ip_destino+"',puerto='"+puerto+"',protocolo='"+protocolo+"',tipo='"+tipo+"',intencionalidad='"+intencionalidad+"',subarea='"+fuente+"',sistema_seguridad='"+sistema_seguridad+"',fecha_operacion='"+fecha_operacion+"',comentarios='"+comentarios+"',correo_origen='"+correo_origen+"',correo_afectado='"+correo_afectado+"',vinculo='"+vinculo+"' WHERE " + where;
    ticketVar.query(query, function(err, rows){
        if(err){
            throw err;
        }
        if(rows.changedRows === 1){
            //Updated
        }
        else if (rows.changedRows > 1){
            //ERROR
        }
        else{
            //not_found
        }
    });
};

exports.sendAllDelayedTickets = function(req, res, usertype){
    var tickectVar = new Tickets();
    var datetime = new Date();
    var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    var where = "(fecha_aplazado IS NOT NULL AND fecha_aplazado BETWEEN '" + fecha + "' AND '2517-04-30')";
    //var where = "eliminado='0'";
    if(usertype !== 2){
        where += " AND eliminado='0'";
    }

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows));
    });
};

exports.sendTicketsAmountByDay = function(req, res, year, month){
    var ticketVar = new Tickets();
    var where = "eliminado='0'";

    ticketVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        var counter = range(1, 32, 1);
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            if(parseInt(fecha.split("-")[0]) === parseInt(year) && parseInt(fecha.split("-")[1]) === parseInt(month)){
                fecha = parseInt(fecha.split("-")[2]);
                console.log(fecha);
                if (!(fecha in counter)) {
                    counter[fecha] = 0;
                }
                counter[fecha-1] += 1;
            }
        });
        res.send(JSON.stringify(counter));
    });
};

exports.sendTicketsAmmountByWeek = function(req, res, year){
    var ticketVar = new Tickets();
    var where = "eliminado='0'";

    ticketVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        var counter = range(1, 53, 1);
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            if(fecha.split("-")[0] === year){
                fecha = parseInt((new Date(fecha)).getWeekNumber());
                counter[fecha-1] += 1;
            }
        });
        res.send(JSON.stringify(counter));
    });
};

exports.sendTicketsAmmountByMonth = function(req, res, year){
    var ticketVar = new Tickets();
    var where = "eliminado='0'";

    ticketVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        var counter = range(1, 13, 1);
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            if(fecha.split("-")[0] === year){
                fecha = (new Date(fecha)).getMonth();
                counter[fecha] += 1;
            }
        });
        res.send(JSON.stringify(counter));
    });
};

exports.sendTicketsAmmountByTrimestre = function(req, res, year){
    var ticketVar = new Tickets();
    var where = "eliminado='0'";

    ticketVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        var counter = range(0, 4, 1);
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            if(fecha.split("-")[0] === year){
                var mes = (new Date(fecha)).getMonth();

                if(mes>=0 && mes <=2){
                    counter[0] += 1;
                }
                else if(mes <= 5){
                    counter[1] += 1;
                }
                else if(mes <= 8){
                    counter[2] += 1;
                }
                else if(mes<=11){
                    counter[3] += 1;
                }
            }
        });
        res.send(JSON.stringify(counter));
    });
};

exports.sendTicketsAmmountBySemestre = function(req, res, year){
    var ticketVar = new Tickets();
    var where = "eliminado='0'";

    ticketVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        var counter = range(0, 2, 1);
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            if(fecha.split("-")[0] === year){
                var mes = (new Date(fecha)).getMonth();

                if(mes>=0 && mes <=5){
                    counter[0] += 1;
                }
                else if(mes <= 11){
                    counter[1] += 1;
                }
            }
        });
        res.send(JSON.stringify(counter));
    });
};

exports.sendTicketsAmmountByYear = function(req, res, year){
    var ticketVar = new Tickets();
    var where = "eliminado='0'";

    ticketVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        var counter = range(0, 5, 1);
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            var annito = fecha.split("-")[0];
            if(annito >= year && annito<=(parseInt(year)+5)){
                counter[annito-year] += 1;
            }
        });
        res.send(JSON.stringify(counter));
    });
};

exports.closeTicket = function(req, res, ticketId, userId, ticketReason){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET estado='1', cerrado_por='" + userId + "', cerrado_razon='" + ticketReason + "' WHERE " + where;

    ticketVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            // Updated !
        }
        else{
            // Not found
        }
        res.redirect("/users");
    });
};

exports.reopenTicket = function(req, res, ticketId){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET estado='0' WHERE " + where;

    ticketVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            // Updated !
        }
        else{
            // Not found
        }
        res.redirect("/users");
    });
};
