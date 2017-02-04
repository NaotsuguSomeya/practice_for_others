program HelloWorld;

{
integer:
 	+ - * div mod
real:
	+ - * /
string:
	+
組み込み関数:
	sqrt 平方根
	stringcos
	round
}
var
	s: string;
	x: integer;
	z: real;
begin
	writeln(10 * 3);
	writeln(10 div 3);
	writeln(10 mod 3);
	writeln(10.0 / 3.0);
	writeln(sqrt(2));
	writeln('hello ' + 'world');
	writeln('--------------');
	s := 'someya';
	x := 10;
	z := 10.5678;
	// write : 改行なし
	write(s);
	write(x);
	write(z);
	writeln(); //空行
	writeln(s,x);
	writeln(s:10,x:10,z:10:2);// Z：小数点以下２桁（四捨五入）
end.
