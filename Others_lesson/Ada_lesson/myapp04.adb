with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  x: Integer;
begin
  put("you number ?");
  get(x); -- ユーザー入力受け付け
  put(x + 3);
  new_line;
  put(x - 3);
  new_line;
  put(x / 3);
  new_line;
  put(x rem 3);
  new_line;
  put(x * 3);
  new_line;
  put(x ** 3);
  new_line;
end MyApp;
