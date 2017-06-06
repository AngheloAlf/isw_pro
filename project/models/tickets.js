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

exports.createTicket = function(req, res, userId, date, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado){
    var ticketVar = new Tickets({propietario: userId, fecha_creacion: date, fuente: fuente, ip_origen: ip_origen, ip_destino: ip_destino, puerto: puerto, protocolo: protocolo, tipo: tipo, intencionalidad: intencionalidad, subarea: subarea, sistema_seguridad: sistema_seguridad, fecha_operacion: fecha_operacion, comentarios: comentarios, correo_origen: correo_origen, correo_afectado: correo_afectado});
    ticketVar.save()
};

exports.sendAllTickets = function(req, res, usertype){
    var tickectVar = new Tickets();
    var datetime = new Date();
    var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    var where = "(fecha_aplazado IS NULL OR fecha_aplazado BETWEEN '2017-04-30' AND '" + fecha +"')";
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

exports.deleteTicket = function(req, res, ticketId, userId){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET eliminado='1', eliminado_por='" + userId + "' WHERE " + where;

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
        res.redirect("/users");
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

exports.updateTicket = function(req, res, ticketId, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET fuente='"+fuente+"', ip_origen='"+ip_origen+"',ip_destino='"+ip_destino+"',puerto='"+puerto+"',protocolo='"+protocolo+"',tipo='"+tipo+"',intencionalidad='"+intencionalidad+"',subarea='"+fuente+"',sistema_seguridad='"+sistema_seguridad+"',fecha_operacion='"+fecha_operacion+"',comentarios='"+comentarios+"',correo_origen='"+correo_origen+"',correo_afectado='"+correo_afectado+"' WHERE " + where;
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
    var where = "(fecha_aplazado IS NOT NULL OR fecha_aplazado BETWEEN '" + fecha + "' AND '2517-04-30')";
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

exports.sendTicketsAmmountByDay = function(req, res){
    var ticketVar = new Tickets();
    var where = "eliminado='0'";

    ticketVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        var counter = {};
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            if(!(fecha in counter)){
                counter[fecha] = 0;
            }
            counter[fecha] += 1;
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
        var counter = range(0, 52, 1);
        rows.forEach(function(value){
            var fecha = value.fecha_creacion.split(" ")[0];
            if(fecha.split("-")[0] === year){
                fecha = parseInt((new Date(fecha)).getWeekNumber());
                counter[fecha] += 1;
            }
        });
        res.send(JSON.stringify(counter));
    });
};
