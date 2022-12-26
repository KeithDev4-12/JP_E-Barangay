program EBarangay;

uses
  Vcl.Forms,
  frmLogin in 'frmLogin.pas' {ULogin},
  frmMainMenu in 'frmMainMenu.pas' {UMainMenu},
  frmResidence in 'frmResidence.pas' {UResidence},
  MainDataModule in 'MainDataModule.pas' {DM: TDataModule},
  frmAccountProfile in 'frmAccountProfile.pas' {UAccountProfile},
  frmBarangayOfficials in 'frmBarangayOfficials.pas' {UBarangayOfficials},
  frmHistoryIssuance in 'frmHistoryIssuance.pas' {UHistoryIssuance},
  frmReport in 'frmReport.pas' {UReport},
  frmPreview in 'frmPreview.pas' {UPreviewData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TULogin, ULogin);
  Application.CreateForm(TUMainMenu, UMainMenu);
  Application.CreateForm(TUResidence, UResidence);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TUAccountProfile, UAccountProfile);
  Application.CreateForm(TUBarangayOfficials, UBarangayOfficials);
  Application.CreateForm(TUHistoryIssuance, UHistoryIssuance);
  Application.CreateForm(TUReport, UReport);
  Application.CreateForm(TUPreviewData, UPreviewData);
  Application.Run;
end.
