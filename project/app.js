var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));




var http = require('http');

app.set('port', 1234);

var expressSession = require('express-session');
var fileUpload = require('express-fileupload'); // To handle files uploads

app.use(expressSession({secret:'somesecrettokenhere', resave:false, saveUninitialized:false}));
app.use(fileUpload());


//Ip Blocking
var IpDeniedError = require('express-ipfilter').IpDeniedError;
var ips = [['192.168.0.0','192.168.0.255'], ['127.0.0.1', '127.0.0.1']];
var ipfilter = require('express-ipfilter').IpFilter;
// Create the server
app.use(ipfilter(ips, {mode: 'allow'}));
app.use(function(err, req, res, _next) {
    console.log('Error handler', err);
    if(err instanceof IpDeniedError){
        res.status(401);
    }
    else{
        res.status(err.status || 500);
    }

    res.render('error', {
        message: 'You shall not pass',
        error: err
    });
});




var index = require('./routes/index');
var users = require('./routes/users');
var login = require('./routes/login');
var logout = require('./routes/logout');

app.use('/', index);
app.use('/users', users);
app.use('/login', login);
app.use('/logout', logout);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});


// error handler
app.use(function(err, req, res) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get('env') === 'development' ? err : {};

    // render the error page
    res.status(err.status || 500);
    res.render('error');
});

http.createServer(app).listen(app.get('port'), function(){
    console.log('Express server listening on port ' + app.get('port'));
});

