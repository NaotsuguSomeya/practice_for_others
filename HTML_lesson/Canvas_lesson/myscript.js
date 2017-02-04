// 画面がすべて読み込み終わったあとで処理を実行するようにする
window.onload = function(){
	draw();
}

function draw(){
	// canvas
	var canvas = document.getElementById('mycanvas');
	if (!canvas || !canvas.getContext) return false;
	var ctx = canvas.getContext('2d');
	// 設定の保存
	ctx.fillStyle = "yellow";
	ctx.save();

	ctx.fillRect(0,0,50,50);

	ctx.fillStyle = "blue";
	ctx.fillRect(100,0,50,50);

	// 設定の復元
	ctx.restore();
	ctx.fillRect(200,0,50,50);


	// canvas
	var canvas2 = document.getElementById('mycanvas02');
	if (!canvas2 || !canvas2.getContext) return false;
	var ctx2 = canvas2.getContext('2d');

	ctx2.globalAlpha = 0.5;

	for (var i = 0; i < 100; i++) {
		var x = Math.floor(Math.random() * 400);
		var y = Math.floor(Math.random() * 200);
		var r = Math.floor(Math.random() * 200);

		ctx2.fillStyle = "rgb("+ c() +","+ c() +","+ c() +")";
		ctx2.beginPath();
		ctx2.arc(x,y,r,0,2*Math.PI);
		ctx2.stroke();
		ctx2.fill();
	}

	function c() {
		return Math.floor(Math.random() * 255);
	}

	// canvas3
	var canvas3 = document.getElementById('mycanvas03');
	if (!canvas3 || !canvas3.getContext) return false;
	var ctx3 = canvas3.getContext('2d');

	ctx3.fillStyle = "red";
	var y = 0;

	(function loop(){
		ctx3.clearRect(0,0,canvas3.width,canvas3.height);
		if (y > canvas3.height) y = 0;
		y++;
		ctx3.fillRect(0,y,50,50);
		setTimeout(loop,10);
	})();
}
