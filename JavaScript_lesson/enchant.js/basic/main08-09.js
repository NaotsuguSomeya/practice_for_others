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
		bear.x = 0;
		bear.y = 0;

		bear.addEventListener('enterframe', function(){
			if (core.input.right) this.x += 5;
			// 衝突判定
			// intersect : ざっくりした衝突
			if (this.intersect(enemy)) {
				// label.text = 'hit!';
			}
			// within ; 微妙な判定もOK
			if (this.within(enemy, 10)) { // 中心点との距離を指定
				// label.text = 'HIT!!';
				// pushScene //
				core.pushScene(gameOverScene);
				core.stop();
			}
		});

		var enemy = new Sprite(32, 32)
		enemy.image = core.assets[charDir];
		enemy.x = 80;
		enemy.y = 0;
		enemy.frame = 5;

		var gameOverScene = new Scene();
		gameOverScene.backgroundColor = "black";

		var label = new Label();
		label.x = 280;
		label.y = 5;
		label.color = "red";
		label.font = "14px 'Arial'";

		core.rootScene.addChild(label);
		core.rootScene.addChild(bear);
		core.rootScene.addChild(enemy);
	};
	// ゲームスタート：フレームがカウントアップを始める
	core.start();
};
