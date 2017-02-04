var express = require('express');
var logger = require('morgan');
var bodyParser = require('body-parser');
var app = express();

//app.use(app.router); // Express 4.x系では不要

app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

// middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(logger('dev'));
// 静的ファイルが存在すればアクセスできるようにする
app.use(express.static(__dirname + '/public'));

app.get('/new', function(req, res){
	res.render('new');
});
app.post('/create', function(req, res){
	res.send(req.body.name);
});
// 3000ポートで待受
app.listen(3000);
console.log("server starting...");
