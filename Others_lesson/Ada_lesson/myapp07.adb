with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure MyApp is
  type Point is
  record
    x: integer range 1..100;
    y: integer range 1..100;
  end record;
  p: Point;
begin
  -- 1
  p.x := 40;
  p.y := 20;
  -- 2
  p := (x=>40, y=>20);
  -- 3
  p := (40,20);
  
  put(p.x);
  new_line;
  put(p.y);
  new_line;
  
end MyApp;
