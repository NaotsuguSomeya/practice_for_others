with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  c: Character;
  s: String(1..12);
begin
  c := 'a'; -- put_lineは使えない
  s := "hello world!"; -- 指定した文字数通りに代入しないとコンパイルエラー

  put(c);
  new_line;
  put_line(s);
  put_line(s & " again!");

  s(1) := 'H';
  put_line(s);
  put_line(s(3..8));
end MyApp;
