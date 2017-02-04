var app = require('http').createServer(handler);
var io = require('socket.io')(app);
var fs = require('fs');

app.listen(1337);
// io.set('log level', 1);
function handler(req, res) {
	fs.readFile(__dirname + '/index.html', function(err, data){
// console.log(err);
		if (err) {
			res.writeHead(500);
			return res.end('Error!');
		}
		res.writeHead(200);
		res.write(data);
		res.end();
	});
}
// ブラウザからの受け取り
// 名前空間
var chat = io.of('/chat').on('connection', function(socket) {
// io.on('connection', function(socket){
	socket.on('my_emit_from_client', function(data) {
		// console.log(data);
		// socket.emit : 接続しているソケットのみ
		// socket.emit('my_emit_from_server', 'hello from server : ' + data);
		// socket.broadcast.emit : 接続しているソケット以外全部
		// socket.broadcast.emit('my_emit_from_server', 'hello from server : ' + data);
		// 接続しているソケット全部
		// io.sockets.emit('my_emit_from_server', '[' + socket.id + ']hello from server : ' + data);
		// socket.client_name = data.name;
		// io.sockets.emit('my_emit_from_server', '[' + socket.client_name + ']hello from server : ' + data.msg);
		socket.join(data.room);
		socket.emit('my_emit_from_server', 'you are in ' + data.room);
		socket.broadcast.to(data.room).emit('my_emit_from_server', data.msg);
	});

});
var news = io.of('/news').on('connection', function(socket) {
	socket.emit('my_emit_from_server', 'date : ' + new Date());
});
