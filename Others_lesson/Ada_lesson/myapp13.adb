with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  -- 配列※1から始めるわけではない
  type Sales is array(1..3) of Integer;
  s: Sales;
begin
  s(1) := 200;
  s(2) := 300;
  s(3) := 500;
  -- s = (200, 300, 500);
  --put(s(1));
  --for i in 1..3 loop
  for i in s'Range loop
    put(s(i));
    new_line;
  end loop;

  put(s'First); -- 最初の添字
  new_line;
  put(s'Last); -- 最後の添字
  new_line;
  put(s'Lengthmy);
  new_line;
end MyApp;
