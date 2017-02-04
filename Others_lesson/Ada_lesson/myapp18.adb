with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  -- exception
  i: integer range 1..20;
  tree_not_good: exception;
begin
  get(i);
  if i = 3 then
    raise tree_not_good;
  end if;
  put(i);
  new_line;
exception
  when tree_not_good =>
    put_line("not 3!");
  when CONSTRAINT_ERROR =>
    put_line("not in range!");
end MyApp;
