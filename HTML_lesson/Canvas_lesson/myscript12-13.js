// 画面がすべて読み込み終わったあとで処理を実行するようにする
window.onload = function(){
	draw();
}

function draw(){
	// canvas
	var canvas = document.getElementById('mycanvas');
	if (!canvas || !canvas.getContext) return false;
	var ctx = canvas.getContext('2d');
	// 画像
	var img = new Image();
	img.src = 'logo_resize.png';
	// 画像読み込み後に実行
	img.onload = function(){
		ctx.drawImage(img,10,10);
	};

	// canvas2
	var canvas2 = document.getElementById('mycanvas02');
	if (!canvas2 || !canvas.getContext) return false;
	ctx2 = canvas2.getContext('2d');
	// 画像
	var img2 = new Image();
	img2.src = 'logo_resize.png';
	img2.onload = function(){
		var pattern = ctx2.createPattern(img2, 'repeat'); // no-repeat, repeat-x, repeat-y
		ctx2.fillStyle = pattern;
		ctx2.fillRect(20,20,200,200);

	};
}
