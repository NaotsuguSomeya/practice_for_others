program HelloWorld;

var
	score: integer;
	rank: integer;
begin
	score:= 65;

	// > < >= <= <> = and or not
	if score > 70 then
		writeln('great!') // ";"不要。最後につけるので注意
	else
		writeln('soso...');

	writeln('-----------------');
	if score > 70 then
		begin // begin end で囲うと";"が必要
			writeln('great!');
			writeln('great2!');
		end
	else
		begin // begin end で囲うと";"が必要
			writeln('soso...');
			writeln('soso2...');
		end; // ifの終わりの";"

	writeln('-----------------');
	rank := 10;

	case rank of
		1:
			writeln('gold');
		2:
			writeln('silver');
		3,4,5:
			writeln('bronze');
	else
		begin
			writeln('no medal');
			writeln('sorry');
		end;
	end;
end.
