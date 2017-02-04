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

app.param('id', function(req,res,next,id){
	var users = ['someya','yocchan','U-CHAN'];
	req.params.name = users[id];
	next();
});
app.get('/hello/:id', function(req, res){
	res.send('hello : ' + req.params.name);
});
app.get('/bye/:id', function(req, res){
	res.send('bye : ' + req.params.name);
});
// 3000ポートで待受
app.listen(3000);
console.log("server starting...");
