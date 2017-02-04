with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  count: integer;
  i: integer := 1;
  j: integer := 1;
begin
  get(count);
  -- for
  for i in 1..count loop
    put(i);
    new_line;
  end loop;
  put_line("------------");
  -- 逆回し
  for i in reverse 1..count loop
    put(i);
    new_line;
  end loop;
  put_line("------------");
  -- while
  while i <= count loop
    put(i);
    new_line;
    i := i + 1;
  end loop;
  put_line("------------");
  -- loop : 永久ループ（exitで抜ける）
  loop
    put(j);
    new_line;
    j := j + 1;
    exit when j > count;
  end loop;
end MyApp;
