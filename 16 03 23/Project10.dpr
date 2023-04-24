program Project10;

uses
  Vcl.Forms,
  UnitAnimals in 'UnitAnimals.pas' {Animals},
  TypeAnimals in 'TypeAnimals.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAnimals, Animals);
  Application.Run;
end.
