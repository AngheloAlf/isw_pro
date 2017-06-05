/**
 * Created by Anghelo on 27-04-2017.
 */

var Db = require('./dbModel').Db;

var Tickets = Db.extend({
    tableName: "tickets"
});
exports.Tickets = Tickets;

exports.createTicket = function(req, res, userId, date, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado){
    var ticketVar = new Tickets({propietario: userId, fecha_creacion: date, fuente: fuente, ip_origen: ip_origen, ip_destino: ip_destino, puerto: puerto, protocolo: protocolo, tipo: tipo, intencionalidad: intencionalidad, subarea: subarea, sistema_seguridad: sistema_seguridad, fecha_operacion: fecha_operacion, comentarios: comentarios, correo_origen: correo_origen, correo_afectado: correo_afectado});
    ticketVar.save()
};

exports.sendAllTickets = function(req, res){
    var tickectVar = new Tickets();
    var datetime = new Date();
    var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    var where = "eliminado='0' AND fecha_aplazado IS NULL OR fecha_aplazado BETWEEN '2017-04-30' AND '" + fecha +"'";

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows));
    });
};

exports.sendTicketById = function(req, res, ticketId){
    var tickectVar = new Tickets();
    var datetime = new Date();
    var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    var where = "id='"+ticketId+"' AND (fecha_aplazado IS NULL OR fecha_aplazado BETWEEN '2017-04-30' AND '" + fecha +"')";

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

exports.deleteTicket = function(req, res, ticketId){
    var ticketVar = new Tickets();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE tickets SET eliminado='1' WHERE " + where;

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

exports.sendTicketsByUser = function(req, res, userId){
    var tickectVar = new Tickets();
    var datetime = new Date();
    var fecha = datetime.getUTCFullYear() + "-" + (datetime.getUTCMonth()+1) + "-" + datetime.getUTCDate();
    var where = "encargado='"+userId+"' AND (fecha_aplazado IS NULL OR fecha_aplazado BETWEEN '2017-04-30' AND '" + fecha +"')";

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows));
    });
};
