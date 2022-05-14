program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {autom_matinForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tautom_matinForm, autom_matinForm);
  Application.Run;
end.
