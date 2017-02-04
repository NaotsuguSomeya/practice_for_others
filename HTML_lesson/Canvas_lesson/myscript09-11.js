// 画面がすべて読み込み終わったあとで処理を実行するようにする
window.onload = function(){
	draw();
}

function draw(){
	// canvas
	var canvas = document.getElementById('mycanvas');
	if (!canvas || !canvas.getContext) return false;
	var ctx = canvas.getContext('2d');
	// 線
	ctx.beginPath();
	ctx.moveTo(20,20); //始点
	ctx.lineTo(120,120);
	ctx.lineTo(120,20);
	ctx.closePath(); // 線を閉じる
	// ctx.stroke(); // 線を引く
	ctx.fill();

	// canvas2
	var canvas2 = document.getElementById('mycanvas02');
	if (!canvas2 || !canvas2.getContext) return false;
	var ctx = canvas2.getContext('2d');

	ctx.beginPath();
	// 0/180 :左
	ctx.arc(100,100,50,10/180*Math.PI,210/180*Math.PI);
	ctx.lineWidth=15;
	ctx.lineCap = "round"; //始点、終点の線スタイル
	ctx.stroke();
	// ctx.fill();

	// canvas3
	var canvas3 = document.getElementById('mycanvas03');
	if (!canvas3 || !canvas3.getContext) return false;
	var ctx = canvas3.getContext('2d');
	// テキスト描画
	ctx.font = 'bold 20px Verdana';
	ctx.textAlign = 'left'; // right, center, start, extend
	ctx.fillStyle = "red";
	// ctx.fillText('Someya', 20, 20);
	ctx.fillText('Someya', 20, 20, 40); // 最大横幅
	ctx.strokeStyle="blue";
	ctx.strokeText('Someya', 20, 120, 40); // 白抜き

}
