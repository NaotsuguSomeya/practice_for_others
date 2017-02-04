var gulp = require('gulp');

gulp.task('html', function(){
	// ファイルのコピー
	gulp.src('./src/index.html')
			.pipe(gulp.dest('./dist')); //フォルダは自動作成
});

gulp.task('default', ['html']);
