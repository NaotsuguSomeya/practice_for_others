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
		var Bear = Class.create(Sprite, {
			initialize: function(x, y){
				// 継承元の初期化
				Sprite.call(this, 32, 32);
				this.x = x;
				this.y = y;
				this.frame = rand(5);
				this.opacity = rand(100) / 100;
				this.image = core.assets[charDir];

				// this.tl.moveBy(rand(100), 0, 40);
				this.tl.moveBy(rand(100), 0, 40, enchant.Easing.BOUNCE_EASEOUT)
								.moveBy(-rand(100), -rand(20), -rand(20))
								.fadeOut(20)
								.fadeIn(20)
								.loop();

				core.rootScene.addChild(this);
			}
		});

		// var bear = new Bear(0,0);
		var bears = [];
		for (var i = 0; i < 100; i++){
			bears[i] = new Bear(rand(FRAME_X),rand(FRAME_Y));
		}

	}
	// ゲームスタート：フレームがカウントアップを始める
	core.start();
};

function rand(n) {
	return Math.floor(Math.random() * (n+1));
}
