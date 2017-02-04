with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  -- generics(型を抽象化してコードを再利用)
  generic
    type element is private;
  procedure Swap(a,b: in out element);
  procedure Swap(a,b: in out element) is
    tmp: element;
  begin
    tmp := a;
    a := b;
    b := tmp;
  end Swap;

  procedure SwapInt is new Swap(Integer);
  procedure SwapChar is new Swap(Character);

  i1: Integer := 3;
  i2: Integer := 5;
  c1: Character := 'a';
  c2: Character := 'b';
begin
  put(i1);
  new_line;
  put(i2);
  new_line;
  put(c1);
  new_line;
  put(c2);
  new_line;

  SwapInt(i1, i2);
  SwapChar(c1, c2);

  put(i1);
  new_line;
  put(i2);
  new_line;
  put(c1);
  new_line;
  put(c2);
  new_line;
end MyApp;
