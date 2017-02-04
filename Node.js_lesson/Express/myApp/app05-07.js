var express = require('express');
var logger = require('morgan');
var app = express();

//app.use(app.router); // Express 4.x系では不要
// middleware
app.use(logger('dev'));
// 静的ファイルが存在すればアクセスできるようにする
app.use(express.static(__dirname + '/public'));
// 自作middleware
app.use(function(req, res, next){
	console.log('my custom middleware!');
	next(); // 次のmiddlewareに繋がるので忘れないこと
});


// /about.txt, /help.txtでもアクセス可能
app.get('/hello.txt', function(req, res){
	res.sendfile(__dirname + '/public/hello.txt');
});
// 3000ポートで待受
app.listen(3000);
console.log("server starting...");
