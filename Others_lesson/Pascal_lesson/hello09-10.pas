program HelloWorld;

{
while
repeat .. until
for
break/continue
}
var
	i: integer;
begin
	i := 0;
	while i < 10 do
	begin
		writeln(i);
		i := i + 1;
	end;
	writeln('---repeat----------');
	// 後ろ判定
	repeat
		writeln(i);
		i := i + 1;
	until (i >= 20);
	writeln('---for----------');
	i := 0;
	for i := 0 to 9 do
	begin
		if i = 7 then break;
		if i = 3 then continue;
		writeln(i);
	end;
end.
