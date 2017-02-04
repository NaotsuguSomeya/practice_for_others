with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure MyApp is
  package User_Pkg is
    type User is tagged private;
    procedure setScore(u: in out User; s: Integer);
    function getScore(u: in User) return Integer;
    function getName(u: in User) return String;
  private
    type User is tagged
      record
        score: Integer;
      end record;
  end User_Pkg;
  package body User_Pkg is
    procedure setScore(u: in out User; s: Integer) is
    begin
      u.score := s;
    end setScore;
    function getScore(u: in User) return Integer is
    begin
      return u.score;
    end getScore;
    function getName(u: in User) return String is
    begin
      return "I am user!";
    end getName;
  end User_Pkg;

  use User_Pkg;

  package Admin_User_Pkg is
    type Admin_User is new User with private;
    procedure setLevel(a: in out Admin_User; l: Integer);
    function getName(a: in Admin_User) return String;
  private
    type Admin_User is new User with
    record
      level: Integer;
    end record;
  end Admin_User_Pkg;

  package body Admin_User_Pkg is
    procedure setLevel(a: in out Admin_User; l: Integer) is
    begin
      a.level := l;
    end setLevel;
    function getName(a: in Admin_User) return String is
    begin
      return "I am admin user! ::level => " & Integer'Image(a.level);
    end getName;
  end Admin_User_Pkg;

  use Admin_User_Pkg;

  tom: User;
  bob: Admin_User;
begin
  setScore(tom,20);
  setScore(bob,55);
  setLevel(bob,3);

  put(getScore(tom));
  new_line;
  put(getScore(bob));
  new_line;
  put(getName(tom));
  new_line;
  put(getName(bob));
  new_line;
end MyApp;
