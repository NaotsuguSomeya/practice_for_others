var x = 0;

// 最初に１回だけ実行
function setup() {
	createCanvas(480, 240);
}
// 繰り返し実行(1フレームごと)
function draw() {
	background(0); // 背景色
	rect(x, 40, 50, 50);
	x++;
}
