var express = require('express');
var app = express();
var os = require('os');

app.get('/', function (request, response) {
        response.send('Hello from nodeJS on host ' + os.hostname() + ", uptime: " + os.uptime() / 60 + " minutes, pid: " + process.pid + "\n");
});

var httpServerPort = process.env.PORT || 8080;
app.listen(httpServerPort, function () {
        console.log('Listening on port ' + httpServerPort);
});
