/*
mouse
	mouseX, mouseY
	mouseIsPressed
	mousePressed()
キー入力
	keyIsPressed
	keyTyped() : 特殊キーを無視
	keyPressed() : 大文字小文字を区別しない
	key : 通常キー
	keyCode : 特殊キーalt ctrl enter）
*/

var r = 50;

function setup() {
	createCanvas(480, 240);
}

function draw(){
	noStroke();
	background('skyblue');

	if (mouseIsPressed) {
		fill('pink')
	} else {
		fill('white')
	}
	if (keyIsPressed) { // mouseIsPressedと同時に使えない？
		fill('orange')
	} else {
		fill('white')
	}

	// ellipse(mouseX,mouseY,50,50);
	ellipse(mouseX,mouseY,r,r);
}

function mousePressed(){
	r += 10;
	return false;
}

function keyTyped() {
	if (key === 'u') {
		r+=10;
	}
	return false;
}

function keyPressed() { // keyTypedと同時に使えない？
	if (keyCode === UP_ARROW) {
		r-=10;
	}
	return false;
}
