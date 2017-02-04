var gulp = require('gulp');

gulp.task('html', function(){
	// returnで次の処理が受け取れる
	return gulp.src('./src/index.html')
			.pipe(gulp.dest('./dist')); //フォルダは自動作成
});
// 先に終わって欲しいタスクを第２引数にとる
gulp.task('msg', ['html'], function(){
	console.log("Hello!(html copy done)");
});
// 複数処理（基本的に並列処理）
// gulp.task('default', ['html', 'msg']);
gulp.task('default', ['msg']);
