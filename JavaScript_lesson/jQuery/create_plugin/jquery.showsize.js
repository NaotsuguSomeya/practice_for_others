;(function($){
	// options : パラメータが渡される
	$.fn.showsize = function(options) {
		// $('img').click(function() {
		// 	var msg = $(this).width() + ' x ' + $(this).height();
		// 	$(this).wrap('<div style="position:relative;"></div>');
		// 	var div = $('<div>')
		// 							.text(msg)
		// 							.css('position', 'absolute')
		// 							.css('top', '0')
		// 							.css('background', 'black')
		// 							.css('color', 'white')
		// 							.css('font-size', '10px')
		// 							.css('opacity', '.9')
		// 							.css('padding', '2px');
		//
		// 	$(this).after(div);
			// this : 呼ばれた要素
			// console.log(this);
			var elements = this;
			// ループの中でthisが使われるので紛らわしいので変数に置き換え
			elements.each(function(){
				// this : １つのimg
				// console.log(this);
				// extend : 最初に空オブジェクトを渡して上書きしていく
				// $(this).data(): カスタムデータ属性を取得
				var opts = $.extend({}, $.fn.showsize.defaults, options, $(this).data());

				$(this).click(function() {
					var msg = $(this).width() + ' x ' + $(this).height();
					$(this).wrap('<div style="position:relative;"></div>');
					var div = $('<div>')
											.text(msg)
											.css('position', 'absolute')
											.css('top', '0')
											.css('background', 'black')
											.css('color', getRandomColor())
											.css('font-size', opts.size +'px')
											.css('opacity', opts.opacity)
											.css('padding', '2px');
					$(this).after(div);
				});
			});
			// 決まり文句：チェーンメソッドを繋げたい場合にthisを返さないとできない
			return this;
		};

		// 共通関数の切り出し
		function getRandomColor() {
			var colors = ['white','pink','orange','green'];
			return colors[Math.floor(Math.random() * colors.length)];
		}

		// オプションが指定されない場合のデフォルト
		$.fn.showsize.defaults = {
			size: 10,
			opacity: .9
		}
})(jQuery);
