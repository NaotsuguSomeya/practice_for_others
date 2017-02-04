/*
ellipseMode(CENTER) : デフォルト
ellipse(cx,cy,w,x) : 楕円

ellipseMode(RADIUS)
ellipseMode(CORNER)
ellipseMode(CORNERS)

/////////////////////////////////////
line(x1, y1, x2, y2) : 線
point : 点
arc : 円弧
triangle : 三角形

/////////////////////////////////////
塗と線
fill('color')

/////////////////////////////////////
テキスト
text(s, x, y, w, h)
textAlign
*/
function setup() {
	createCanvas(480, 240);
	background('skyblue');

	// fill('pink');
	var c = color('orange')
	// fill(c);
	noFill(); // 透明
	ellipse(width/2,height/2,150,100);

	stroke(c);
	strokeWeight(0.5);
	// noStroke();
	line(0,0,width/2,height/2);

	ellipse(100,100,10,10);
	textAlign(LEFT, TOP)
	textSize(32);
	// textFont('Impact');
	textStyle(BOLD);
	text("hello world", 100, 100);
}
