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

exports.sendTicketById = function(req, res, ticketId){
    var tickectVar = new TicketData();
    var where = "ticketId='"+ticketId+"' AND eliminado='0'";

    tickectVar.find('all', {where: where}, function (err, rows){
        if(err){
            throw err;
        }
        res.send(JSON.stringify(rows));
    });
};

exports.visarData = function(req, res, ticketId){
    var tickectVar = new TicketData();
    var where = "id='" + ticketId + "'";
    var query = "UPDATE ticketData SET aceptado='1' WHERE " + where;

    tickectVar.query(query, function(err, rows){
        if(err){
            throw err;
        }

        if(rows.changedRows === 1){
            res.send("OK");
        }
        else{
            res.send("ERROR");
        }
    });
};
