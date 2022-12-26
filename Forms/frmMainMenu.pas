unit frmMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons,
  Vcl.WinXCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxGDIPlusClasses,
  System.ImageList, Vcl.ImgList;

type
  TUMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Re1: TMenuItem;
    User1: TMenuItem;
    UploadFiles1: TMenuItem;
    Issuance1: TMenuItem;
    About1: TMenuItem;
    Developers1: TMenuItem;
    N1: TMenuItem;
    JPLaurel1: TMenuItem;
    Panel1: TPanel;
    pnlCenter: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Image1: TImage;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Image2: TImage;
    Shape3: TShape;
    Label4: TLabel;
    Shape4: TShape;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Image3: TImage;
    Shape5: TShape;
    Label6: TLabel;
    Shape6: TShape;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Image4: TImage;
    Shape7: TShape;
    Label8: TLabel;
    Shape8: TShape;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Image5: TImage;
    Shape9: TShape;
    Label10: TLabel;
    Shape10: TShape;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    Image6: TImage;
    Shape11: TShape;
    Label12: TLabel;
    Shape12: TShape;
    GroupBox7: TGroupBox;
    Label13: TLabel;
    Image7: TImage;
    Shape13: TShape;
    Label14: TLabel;
    Shape14: TShape;
    GroupBox8: TGroupBox;
    Label15: TLabel;
    Image8: TImage;
    Shape15: TShape;
    Label16: TLabel;
    Shape16: TShape;
    GroupBox9: TGroupBox;
    Label17: TLabel;
    Image9: TImage;
    Shape17: TShape;
    Label18: TLabel;
    Shape18: TShape;
    Panel2: TPanel;
    Panel3: TPanel;
    Image10: TImage;
    BaraganyID1: TMenuItem;
    Panel4: TPanel;
    Panel5: TPanel;
    Label19: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    Panel6: TPanel;
    Label20: TLabel;
    Shape21: TShape;
    Panel7: TPanel;
    Label21: TLabel;
    Panel8: TPanel;
    Label22: TLabel;
    Shape23: TShape;
    Shape24: TShape;
    Panel9: TPanel;
    Label23: TLabel;
    Shape22: TShape;
    Panel10: TPanel;
    Label24: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    Label25: TLabel;
    Image11: TImage;
    Button1: TButton;
    ImageList1: TImageList;
    Label26: TLabel;
    Certi1: TMenuItem;
    BarangayCertificate1: TMenuItem;
    BarangayClearance1: TMenuItem;
    BarangayBusinessClearance1: TMenuItem;
    CertificateOfIn1: TMenuItem;
    otalNumberOfPopulationReport1: TMenuItem;
    PopupMenu1: TPopupMenu;
    BarangayID1: TMenuItem;
    GroupBox10: TGroupBox;
    Panel11: TPanel;
    Label27: TLabel;
    Shape27: TShape;
    Shape29: TShape;
    Panel12: TPanel;
    Label28: TLabel;
    Shape28: TShape;
    Panel13: TPanel;
    Label29: TLabel;
    Shape30: TShape;
    Panel14: TPanel;
    Label30: TLabel;
    Shape31: TShape;
    Panel15: TPanel;
    Label31: TLabel;
    Shape32: TShape;
    Panel16: TPanel;
    Label32: TLabel;
    Shape33: TShape;
    Shape34: TShape;
    procedure FormShow(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Re1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure BarangayCertificate1Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UMainMenu: TUMainMenu;

implementation

{$R *.dfm}
uses frmResidence, frmAccountProfile, frmBarangayOfficials, frmHistoryIssuance, frmPreview,
frmBarangayCertificate;

procedure TUMainMenu.BarangayCertificate1Click(Sender: TObject);
var
  UPreviewData : TUPreviewData;
begin
  try
    UPreviewData := TUPreviewData.Create(Self);
    UPreviewData.Label2.Caption := 'Barangay Certificate';
    //UResidence.PageControl1.ActivePageIndex := 3;
    UPreviewData.ShowModal;
  finally
    UPreviewData.Free;
  end;
end;

procedure TUMainMenu.FormShow(Sender: TObject);
begin
    pnlCenter.Left := ((Screen.DesktopWidth - pnlCenter.Width - Panel2.Width) div 2);
    pnlCenter.Top := ((Screen.DesktopHeight - pnlCenter.Height - 50) div 2);
    //ShowMessage(CurrToStr(Screen.DesktopHeight));
end;

procedure TUMainMenu.Panel10Click(Sender: TObject);
var
  //FWashingPanels : TFWashingPanels;
  UHistoryIssuance : TUHistoryIssuance;
begin
  //if Assigned(FSettings) then
  //  FSettings.Free;
  try

    //Panel8.Visible := False;
    UHistoryIssuance := TUHistoryIssuance.Create(Self);
    //UResidence.PageControl1.ActivePageIndex := 3;
    UHistoryIssuance.ShowModal;
  finally
    UHistoryIssuance.Free;
  end;
end;

procedure TUMainMenu.Panel13Click(Sender: TObject);
var
  //FWashingPanels : TFWashingPanels;
  UBarangayCertificate : TUBarangayCertificate;
begin
  //if Assigned(FSettings) then
  //  FSettings.Free;
  try
    UBarangayCertificate := TUBarangayCertificate.Create(Self);
    //UResidence.PageControl1.ActivePageIndex := 3;
    UBarangayCertificate.ShowModal;
  finally
    UBarangayCertificate.Free;
  end;
end;

procedure TUMainMenu.Panel6Click(Sender: TObject);
var
  //FWashingPanels : TFWashingPanels;
  UResidence : TUResidence;
begin
  //if Assigned(FSettings) then
  //  FSettings.Free;
  try

    //Panel8.Visible := False;
    UResidence := TUResidence.Create(Self);
    //UResidence.PageControl1.ActivePageIndex := 3;
    UResidence.ShowModal;
  finally
    UResidence.Free;
  end;
end;

procedure TUMainMenu.Panel7Click(Sender: TObject);
var
  //FWashingPanels : TFWashingPanels;
  UAccountProfile : TUAccountProfile;
begin
  //if Assigned(FSettings) then
  //  FSettings.Free;
  try
    UAccountProfile := TUAccountProfile.Create(Self);
    //UResidence.PageControl1.ActivePageIndex := 3;
    UAccountProfile.ShowModal;
  finally
    UAccountProfile.Free;
  end;
end;

procedure TUMainMenu.Panel8Click(Sender: TObject);
begin
  if GroupBox10.Visible then begin
    GroupBox10.Visible := False;
  end else begin
    GroupBox10.Visible := True;
  end;

end;

procedure TUMainMenu.Panel9Click(Sender: TObject);
var
  //FWashingPanels : TFWashingPanels;
  UBarangayOfficials : TUBarangayOfficials;
begin
  //if Assigned(FSettings) then
  //  FSettings.Free;
  try
    UBarangayOfficials := TUBarangayOfficials.Create(Self);
    //UResidence.PageControl1.ActivePageIndex := 3;
    UBarangayOfficials.ShowModal;
  finally
    UBarangayOfficials.Free;
  end;
end;

procedure TUMainMenu.Re1Click(Sender: TObject);
begin
  Panel6Click(Sender);
end;

procedure TUMainMenu.User1Click(Sender: TObject);
begin
  Panel7Click(Sender);
end;

end.
