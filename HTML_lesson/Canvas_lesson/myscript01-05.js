// 画面がすべて読み込み終わったあとで処理を実行するようにする
window.onload = function(){
	draw();
}

function draw(){
	var canvas = document.getElementById('mycanvas');
	if (!canvas || !canvas.getContext) return false;
	var ctx = canvas.getContext('2d');
	// 線や塗りのスタイル
	ctx.strokeStyle = "#ee00ff"; // rgb, rgbaも使用可能
	ctx.lineWidth = 5; // 線の幅
	ctx.lineJoin = "bevel"; // 角のスタイル,: round bevel miter
	ctx.fillStyle = "#ee00ff";
	// 四角形 : 始点x座標,始点y座標,x辺,y辺
	ctx.strokeRect(10,10,50,50);
	ctx.fillRect(70,10,50,50); // 塗あり
	ctx.clearRect(80,20,30,30); // 切り抜き
}
