program EBarangay;

uses
  Vcl.Forms,
  frmLogin in 'frmLogin.pas' {ULogin},
  frmMainMenu in 'frmMainMenu.pas' {UMainMenu},
  frmResidence in 'frmResidence.pas' {UResidence};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TULogin, ULogin);
  Application.CreateForm(TUMainMenu, UMainMenu);
  Application.CreateForm(TUResidence, UResidence);
  Application.Run;
end.
