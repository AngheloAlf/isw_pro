/**
 * Created by Anghelo on 27-04-2017.
 */

var Db = require('./dbModel').Db;

var Tickets = Db.extend({
    tableName: "tickets"
});
exports.Tickets = Tickets;

