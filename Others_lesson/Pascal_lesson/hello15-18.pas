program HelloWorld;

{
列挙型：定数リスト
部分範囲型
配列
レコード型（異なる型を混在できる）
}
// Mainブロック
type
	colors = (red, green, blue, yellow);
	sales = array[2010..2015] of integer;
	colorArrays = array[colors] of boolean;
	dim = array[0..2, 0..2] of integer;
	user = record
		name: string;
		score: integer;
	end;

var
	mycolor: colors;
	teamNumber: 1..5;
	teamSymbol: 'a'..'e';
	teamColor: red..blue;
	mysales: sales;
	mycolorArr: colorArrays;
	myDim : dim;
	someya, yocchan: user;
begin
	mycolor := green;
	writeln(mycolor);
	writeln(succ(green)); // blue
	writeln(pred(green)); // red
	writeln(ord(green)); // 1
	writeln(succ('b')); // c

	writeln('-------------');
	teamNumber := 3;
	writeln(teamNumber);
	mysales[2011] := 200;
	writeln(mysales[2011]);
	mycolorArr[blue] := true;
	writeln(mycolorArr[blue]);
	myDim[0, 1] := 1234;
	writeln(myDim[0,1]);

	someya.name := 'someya';
	someya.score := 123;
	with yocchan do
	begin
		name := 'yocchan!';
		score := 987;
	end;
	writeln(someya.name);
	writeln(someya.score);
	writeln(yocchan.name);
	writeln(yocchan.score);
end.
