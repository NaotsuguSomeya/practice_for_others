var express = require('express');
var app = express();

//app.use(app.router); // Express 4.x系では不要
app.get('/', function(req, res){
	res.send('hello world');
});
app.get('/about', function(req, res){
	res.send('about this page');
});
// プレースホルダ, "?"で値の存在チェックができる
app.get('/users/:name?', function(req, res){
	if (req.params.name) {
		res.send('you are ' + req.params.name + ' !');
	} else {
		res.send('you nobody!!');
	}
	// res.send('you are ' + req.params.name + ' !');
});
// 正規表現で制限
app.get('/items/:id([0-9]+)', function(req, res){
	res.send('item no : ' + req.params.id);
});
// 3000ポートで待受
app.listen(3000);
console.log("server starting...");
