with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  count: integer range 1..5;
begin
  get(count);
  -- 変数の範囲を網羅することが必須
  case count is
    when 1 =>
      put_line("one!");
    when 2 =>
      put_line("two!");
    when 3 =>
      put_line("three!");
    when others =>
      put_line("others!");
  end case;
end MyApp;
