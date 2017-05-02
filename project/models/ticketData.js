/**
 * Created by Anghelo on 02-05-2017.
 */

var Db = require('./dbModel').Db;

var TicketData = Db.extend({
    tableName: "ticketData"
});
exports.TicketData = TicketData;

exports.addData = function(req, res, ticketId, ticketData, userId, date, filename){
    var ticketVar = new TicketData({ticketId: ticketId, antecedente: ticketData, userId: userId, fecha: date, filename: filename});
    ticketVar.save();
};
