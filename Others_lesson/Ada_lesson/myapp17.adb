with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  -- access : ポインタ
  x, y: access Integer;
  i: aliased Integer; -- aliased : メモリのアドレスにアクセスする場合
begin
  x := new Integer;
  x.all := 13; -- 値の代入
  put(x.all);
  new_line;

  i := 5;
  y := i'Access;
  put(y.all); -- 5
  new_line;

  i := 15;
  put(y.all); -- 15
  new_line;
end MyApp;
