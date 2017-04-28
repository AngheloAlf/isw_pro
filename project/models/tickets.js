/**
 * Created by Anghelo on 27-04-2017.
 */

var Db = require('./dbModel').Db;

var Tickets = Db.extend({
    tableName: "tickets"
});
exports.Tickets = Tickets;

exports.createTicket = function(req, res, userId, fuente, ip_origen, ip_destino, puerto, protocolo, tipo, intencionalidad, subarea, sistema_seguridad, fecha_operacion, comentarios, correo_origen, correo_afectado){
    var tick = new Tickets({propietario: userId, estado: '0', fuente: fuente, ip_origen: ip_origen, ip_destino: ip_destino, puerto: puerto, protocolo: protocolo, tipo: tipo, intencionalidad: intencionalidad, subarea: subarea, sistema_seguridad: sistema_seguridad, fecha_operacion: fecha_operacion, comentarios: comentarios, correo_origen: correo_origen, correo_afectado: correo_afectado});
    tick.save()
};

