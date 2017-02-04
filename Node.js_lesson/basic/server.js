var http = require('http');
var fs = require('fs'); // 外部ファイル読み込みオブジェクト
var ejs = require('ejs');
var qs = require('querystring');

var settings = require('./settings'); // 「.js」は省略可能
// console.log(settings);
var server = http.createServer();
// var msg;
// ↓blocking...リクエストを受け取る前なのでOK
// var template = fs.readFileSync(__dirname + '/public_html/hello.ejs', 'utf-8');
var template = fs.readFileSync(__dirname + '/public_html/bbs.ejs', 'utf-8');
// var n = 0;
var posts = [];
function renderForm(posts, res) {
	var data = ejs.render(template, {
		posts: posts
	});
	res.writeHead(200, {'Content-Type': 'text/html'});
	res.write(data);
	res.end();
}

server.on('request', function(req, res){
	// リクエストmethodの受け取り
	if (req.method === 'POST') {
		req.data = "";
		// readable : リクエストを受信している間
		req.on('readable', function(){
			req.data += req.read();
		});
		// end : 受信の終了を検知
		req.on('end', function() {
			// req.dataに"null"文字列がくっつく
			var query = qs.parse(req.data);
			posts.push(query.name);
			renderForm(posts, res);
		});
	} else {
		renderForm(posts, res);
	}

	// n++;
	// var data = ejs.render(template, {
	// 	title: "hello",
	// 	contents: "<strong>world!!</strong>",
	// 	n: n
	// });

	// // ファイル読み込み
	// fs.readFile(__dirname + '/public_html/hello.html',
	// 						'utf-8',
	// 						function(err, data){
	// 							if(err){
	// 								res.writeHead(404, {'Content-Type': 'text/plain'});
	// 								res.write('not found');
	// 								return res.end();
	// 							}
	// 							res.writeHead(200, {'Content-Type': 'text/html'});
	// 							res.write(data);
	// 							res.end();
	// 						});
	// switch (req.url) {
	// 	case '/about':
	// 		msg = 'about this page';
	// 		break;
	// 	case '/profile':
	// 		msg = 'about Me!';
	// 		break;
	// 	default:
	// 		msg = 'Wrong Page!!';
	// }
	// res.writeHead(200, {'Content-Type': 'text/plain'});
	// res.write(msg);
	// res.end();
});
server.listen(settings.port, settings.host); // PORT, IP
console.log("server listening...");
