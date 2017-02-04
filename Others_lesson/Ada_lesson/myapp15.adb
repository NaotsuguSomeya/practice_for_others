with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  -- in : 使うだけ
  -- out : 書き換え
  -- in out もOK
  procedure SayHi(name: in String) is
  begin
    put_line("Hi! " & name);
  end SayHi;
begin
  SayHi("Tom");
  SayHi("Bob");
end MyApp;
