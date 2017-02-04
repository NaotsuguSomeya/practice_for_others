with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  -- function : 返り値あり
  function Double(a: in Integer) return Integer is
  begin
    return a * 2;
  end Double;
  x: Integer;
begin
  get(x);
  put(Double(x));
  new_line;
end MyApp;
