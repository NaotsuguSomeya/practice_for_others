enchant();

var charDir = "../../../commonlib/enchant.js-builds-0.8.3-b/images/chara1.png";
var FRAME_X = 320;
var FRAME_Y = 320;

window.onload = function(){
	var core = new Core(FRAME_X, FRAME_Y);
	core.preload(charDir);
	core.fps = 15;

	var score = 0;
	var timeLeft = 5 * core.fps;

	core.onload = function() {
		var bear = new Sprite(32, 32);
		bear.x = rand(FRAME_X);
		bear.y = rand(FRAME_Y);
		bear.frame = 0;
		bear.image = core.assets[charDir];

		bear.on('touchstart', function(){
			score++;
			scoreLabel.text = 'Score: ' + score;
			this.x = rand(FRAME_X);
			this.y = rand(FRAME_Y);
		});

		var scoreLabel = new Label('Score: 0');
		scoreLabel.x = 200;
		scoreLabel.y = 5;

		var timeLabel = new Label('Time: 0');
		timeLabel.x = 5;
		timeLabel.y = 5;

		core.on('enterframe', function(){
			timeLeft--;
			timeLabel.text = 'Time: ' + timeLeft;
			if(timeLeft <= 0){
				alert('Your score: ' + score);
				this.stop();
			}
		});

		core.rootScene.addChild(timeLabel);
		core.rootScene.addChild(scoreLabel);
		core.rootScene.addChild(bear);
	}
	core.start();
}

function rand(n) {
	return Math.floor(Math.random() * (n+1));
}
