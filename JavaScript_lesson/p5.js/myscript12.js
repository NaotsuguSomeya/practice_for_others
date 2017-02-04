/*
乱数
	random() : 0-1
	random(n) : 0-n
	random(n,m) : n-m
*/

var x,y,r;

function setup() {
	createCanvas(480, 240);
	noStroke();
	background('skyblue');
}

function draw(){
	x = random(width);
	y = random(height);
	if (random()>0.9) {
		r = rasndom(50,50);
	} else {
		r = random(10,10);
	}
	fill(255,255,255,random(30,250));
	ellipse(x,y,r,r);
	ellipse(x,y,r,r);
}
