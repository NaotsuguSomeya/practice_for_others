with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure MyApp is
  -- オリジナルの型作成
  type Score is range 0..100;
  x: Score;
  type Youbi is (Mon,Tsu,Wed,Thu,Fri,Sat,Sun);
  subtype Weekday is Youbi range Mon..Fri;
  subtype Weekend is Youbi range Sat..Sun;
  d: Weekday;
begin
  x := 50;
  -- x := 150; コンパイルエラー
  d := Mon;
end MyApp;
