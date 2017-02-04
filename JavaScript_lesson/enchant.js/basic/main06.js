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

		bear.addEventListener('enterframe', function(){
			// ユーザーの入力に応じる
			if (core.input.left) this.x -= 5;
			if (core.input.right) this.x += 5;
			if (core.input.up) this.y -= 5;
			if (core.input.down) this.y += 5;
		});
		// スマホ用：タッチしたとき
		bear.on('touchstart', function() {
			core.rootScene.removeChild(this);
		});

		core.rootScene.on('touchstart', function(e) {
			bear.x = e.x;
			bear.y = e.y;
		});

		core.rootScene.addChild(bear);
	};
	// ゲームスタート：フレームがカウントアップを始める
	core.start();
};
