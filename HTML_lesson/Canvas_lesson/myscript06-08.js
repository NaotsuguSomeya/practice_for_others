// 画面がすべて読み込み終わったあとで処理を実行するようにする
window.onload = function(){
	draw();
}

function draw(){
	var canvas = document.getElementById('mycanvas');
	if (!canvas || !canvas.getContext) return false;
	var ctx = canvas.getContext('2d');

	// グラデーション
	// var g = ctx.createLinearGradient(0,0,100,100);
	var g = ctx.createRadialGradient(50,50,20,50,50,60);
	g.addColorStop(0.0, "red");
	g.addColorStop(0.5, "yellow");
	g.addColorStop(1.0, "blue");
	ctx.fillStyle = g;
	ctx.fillRect(0,0,100,100);

	// canvas2
	var canvas2 = document.getElementById('mycanvas02');
	if (!canvas2 || !canvas2.getContext) return false;
	var ctx = canvas2.getContext('2d');
	// 影
	ctx.shadowColor = '#ccc';
	ctx.shadowOffsetX = 5;
	ctx.shadowOffsetY = 5;
	ctx.shadowBlur = 5; // ぼかし

	// 透明度
	ctx.globalAlpha = 0.5;

	ctx.fillRect(0,0,100,100);

	// canvas2
	var canvas3 = document.getElementById('mycanvas03');
	if (!canvas3 || !canvas3.getContext) return false;
	var ctx = canvas3.getContext('2d');

	// 変形
	ctx.scale(0.8,0.8); // 大きさ
	ctx.rotate(30/180*Math.PI);// 回転
	ctx.translate(100,10); // 移動

	ctx.fillRect(0,0,100,100);
}
