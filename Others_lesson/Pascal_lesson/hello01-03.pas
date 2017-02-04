program HelloWorld; // プログラム名をつける
(*
	comment
 *)
{
 変数：大文字小文字の区別なし
}
const
	author = 'someya';
var
	// message: string;
	message: string = 'hello!';
begin
	// message := 'hello';
	// writeln : 改行付き
	// writeln('hello world');
	//author := 'xxxx'; コンパイルエラー
	writeln(message);
	writeln(author);
end. // ピリオド
