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
  frmPreview in 'frmPreview.pas' {UPreviewData},
  frmBarangayCertificate in 'frmBarangayCertificate.pas' {UBarangayCertificate},
  frmCertificateOfAppearance in 'frmCertificateOfAppearance.pas' {UCertificateOfAppearance},
  frmBarangayClearance in 'frmBarangayClearance.pas' {UBarangayClearance},
  frmApprovalOfRequest in 'frmApprovalOfRequest.pas' {UApprovalOfRequest},
  frmDeveloper in 'frmDeveloper.pas' {UDeveloper},
  frmAboutHistory in 'frmAboutHistory.pas' {UAboutHistory},
  frmResidentInformation in 'frmResidentInformation.pas' {UResidentInformation},
  frmAccountProfileInformation in 'frmAccountProfileInformation.pas' {UAccountProfileInformation},
  frmBarangayID in 'frmBarangayID.pas' {UBarangayID},
  frmOrgChart in 'frmOrgChart.pas' {UOrgChart},
  frmBlotter in 'frmBlotter.pas' {UBlotter};

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
  Application.CreateForm(TUBarangayCertificate, UBarangayCertificate);
  Application.CreateForm(TUCertificateOfAppearance, UCertificateOfAppearance);
  Application.CreateForm(TUBarangayClearance, UBarangayClearance);
  Application.CreateForm(TUApprovalOfRequest, UApprovalOfRequest);
  Application.CreateForm(TUDeveloper, UDeveloper);
  Application.CreateForm(TUAboutHistory, UAboutHistory);
  Application.CreateForm(TUResidentInformation, UResidentInformation);
  Application.CreateForm(TUAccountProfileInformation, UAccountProfileInformation);
  Application.CreateForm(TUBarangayID, UBarangayID);
  Application.CreateForm(TUOrgChart, UOrgChart);
  Application.CreateForm(TUBlotter, UBlotter);
  Application.Run;
end.
