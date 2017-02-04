with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure MyApp is
  x: integer;
  y: float;
begin
  get(x); -- ユーザー入力受け付け
  get(y);
  --put(x);
  put(item=>x, width=>5);
  new_line;
  --put(y);
  put(item=>y, fore=>5, aft=>2,exp=>0);
  new_line;
  put(Float(x) + y, 5,2,0);
  new_line;
end MyApp;
