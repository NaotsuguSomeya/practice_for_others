var gulp = require('gulp');
var pkg = require('./package.json');

var imagemin = require('gulp-imagemin');
var coffee = require('gulp-coffee');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var plumber = require('gulp-plumber');
var header = require('gulp-header');
var webserver = require('gulp-webserver');

gulp.task('html', function(){
	gulp.src('./src/index.html')
			.pipe(gulp.dest('./dist')); //フォルダは自動作成
});

gulp.task('img', function(){
	gulp.src('./src/img/*.jpg')
			.pipe(imagemin())
			.pipe(gulp.dest('./dist/img')); //フォルダは自動作成
});

gulp.task('js', function(){
	gulp.src('./src/coffee/*.coffee')
			.pipe(plumber()) // エラーが出た時にメッセージは出力するがgulpは止めない
			.pipe(coffee())
			.pipe(concat('all.min.js'))
			.pipe(uglify())
			// .pipe(header('/* copylight @someya */'))
			// .pipe(header('/* copylight @<%= name %> */', {name: 'someya'}))
			.pipe(header('/* copylight @<%= pkg.name %> */', {pkg: pkg}))
			.pipe(gulp.dest('./dist/js')); //フォルダは自動作成
});

// タスク監視
gulp.task('watch', function(){
	// 監視対象、実行タスク
	gulp.watch('./src/coffee/*.coffee', ['js']);
	gulp.watch('./src/*.html', ['html']);
});

gulp.task('webserver', function(){
	// 監視対象、実行タスク
	gulp.src('./dist')
			.pipe(
					webserver({
						host: 'localhost',
						port: 9000,
						livereload: true
					})
			);
});

gulp.task('default', ['html', 'img', 'js', 'watch', 'webserver']);
