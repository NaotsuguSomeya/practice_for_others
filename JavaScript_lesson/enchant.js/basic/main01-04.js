// enchant.jsを使えるようにする
enchant();
/*
	Core オブジェクト：ゲーム本体
	 - rootScene : ゲームシーン
	 -- Sprite : ex) bear
*/
var charDir = "../../../commonlib/enchant.js-builds-0.8.3-b/images/chara1.png";
var FRAME_X = 320;
var FRAME_Y = 320;

window.onload = function() {
	// Coreで空間の大きさを指定
	var core = new Core(FRAME_X, FRAME_Y);
	core.preload(charDir);
	// fps : frame per seconds -> フレーム毎秒
	core.fps = 15;
	core.onload = function() {
		// クマの大きさを指定
		var bear = new Sprite(32, 32)
		bear.image = core.assets[charDir];
		// クマの位置座標
		bear.x = 0;
		bear.y = 0;

		// フレームがカウントアップしたとき（新しいフレームに入った時）
		bear.addEventListener('enterframe', function(){
			// this = baer
			this.x += 10;
			if (this.x > FRAME_X) {
				this.x = 0;
			}
			// rotate(n) : n度（角度）ずつ動かす
			this.rotate(2);
			// scale(a, b) : 横にa倍、縦にb倍
			this.scale(1.01, 1.01);
		});

		core.rootScene.addChild(bear);
	};
	// ゲームスタート：フレームがカウントアップを始める
	core.start();
};
