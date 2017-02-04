program HelloWorld;

{
procedure
}
procedure sayHi;
begin
	writeln('hi!');
end;

procedure sayHello(name: string);
const
	myname = 'yocchan';
begin
	writeln('hello! ' + name + ' ! from ' + myname);
end;

// var : 参照渡し→呼び出し元が変わる
procedure swap(var x,y: integer);
var
	tmp: integer;
begin
	tmp := x;
	x := y;
 	y := tmp;
end;

{
function
}
function getNumber:integer;
begin
	getNumber := 10;
end;
function getNumber2(a,b:integer):integer;
const
	factor = 2;
begin
	getNumber2 := (a + b) * factor;
end;

procedure p2; forward; // 後で宣言するprocedureを先に使いたい時
procedure p1;
begin
	writeln('p1');
	p2;
end;

procedure p2;
begin
	writeln('p2');
end;

// Mainブロック
var
	x,y: integer;
	result: integer;
begin
	sayHi;
	sayHello('Tom');
	sayHello('Bob');
	writeln('-------------');
	x:= 10;
	y:= 3;
	swap(x,y);
	writeln(x:5,y:5); // 3 10
	writeln('-------------');
	result := getNumber;
	writeln(result);
	result := getNumber2(3,5);
	writeln(result);
end.
