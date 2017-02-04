var express = require('express');
var logger = require('morgan');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');
var connect = require('connect');
var expressSession = require('express-session');
var cookieParser = require('cookie-parser');
var csrf = require('csurf');

var app = express();
var post = require('./routes/post');

app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

// middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(methodOverride('_method'));
app.use(logger('dev'));

// csrf対策
app.use(cookieParser());
app.use(expressSession({secret: 'secret_key', resave: true, saveUninitialized: true}));
app.use(csrf());
app.use(function(req, res, next) {
  res.locals.csrftoken = req.csrfToken();
  next();
});
// エラー処理
app.use(function(err,req, res, next){
	res.send(err.message);
});

// routing
app.get('/', post.index);
app.get('/posts/:id([0-9]+)', post.show);
app.get('/posts/new', post.new);
app.post('/posts/create', post.create);
app.get('/posts/:id/edit', post.edit);
app.put('/posts/:id', post.update);
app.delete('/posts/:id', post.destroy);

// 3000ポートで待受
app.listen(3000);
console.log("server starting...");
