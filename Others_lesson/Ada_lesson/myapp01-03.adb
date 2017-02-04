with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  x: Integer;
  y: constant Integer := 3; --定数は必ず初期化
  
begin
   -- インデントは３文字
   -- Ada.Text_IO.put_line("hello, world");
   -- use句で指定するとAdaが自動で検索する
   put_line("hello, world"); -- 文字列でのみ使用可能
   new_line;
   x := 5;
   put(x);
   new_line;
   x := 10;
   put(x, 10); --桁数指定
   new_line;
   put(y);
   new_line;
   put_line(Integer'Image(y)); -- 文字列に変換
end MyApp;
