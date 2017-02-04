/*
rect(x,y,w,h) : 長方形
width, height : 描画領域

[rectMode]
 rectMode(CORNER) : デフォルト
 rect(x,y,w,h)

 rectMode(CORNERS)
 rect(x1,y1,x2,y2)

 rectMode(CENTER)
 rect(cx,cy,w,h)


 rectMode(RADIUS)
 rect(cx,cy,w/2,h/2)
*/
function setup() {
	createCanvas(480, 240);
	background('skyblue');

	// rect(50,50,150,100);
	rectMode(CENTER);
	rect(width/2,height/2,150,100);
}
