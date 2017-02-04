var express = require('express');
var logger = require('morgan');
var app = express();

//app.use(app.router); // Express 4.x系では不要

app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

// middleware
app.use(logger('dev'));
// 静的ファイルが存在すればアクセスできるようにする
app.use(express.static(__dirname + '/public'));

app.get('/', function(req, res){
	res.render('index', {title: 'my title'}); // ".ejs"は省略可能
});
// 3000ポートで待受
app.listen(3000);
console.log("server starting...");
