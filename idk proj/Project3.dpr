program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  a: real;
  endp: string;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    writeln('������� �����: ');
    readln(a);
    writeln(a + a);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  write('��� ���������� ��������� ������� Enter . . . ');
  readln(endp);
end.