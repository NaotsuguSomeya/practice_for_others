with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure MyApp is
  score: integer;
begin
  get(score);
  -- > < <= >= =(equal) /=(not equall)
  if score > 80 then
    put_line("great!");
  elsif score > 60 then
    put_line("good");
  else
    put_line("soso");
  end if;
end MyApp;
