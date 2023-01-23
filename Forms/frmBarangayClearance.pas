unit frmBarangayClearance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, DBCtrlsEh, Vcl.Mask, Vcl.DBCtrls, Vcl.Menus;

type
  TUBarangayClearance = class(TForm)
    GroupBox1: TGroupBox;
    Shape2: TShape;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    fdqryHistoryDetails: TFDQuery;
    DSHistoryDetails: TDataSource;
    Panel5: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Shape1: TShape;
    SpeedButton3: TSpeedButton;
    Shape3: TShape;
    SpeedButton4: TSpeedButton;
    Shape4: TShape;
    Panel6: TPanel;
    Label8: TLabel;
    DBGridEh2: TDBGridEh;
    fdqryResidence: TFDQuery;
    fdqryResidenceID: TFDAutoIncField;
    fdqryResidenceBarangayIdNo: TStringField;
    fdqryResidenceFName: TStringField;
    fdqryResidenceMName: TStringField;
    fdqryResidenceLName: TStringField;
    fdqryResidenceCompleteName: TStringField;
    fdqryResidenceFather: TStringField;
    fdqryResidenceMother: TStringField;
    fdqryResidenceDOB: TDateField;
    fdqryResidenceGender: TStringField;
    fdqryResidenceAddress: TStringField;
    fdqryResidencePurok: TStringField;
    fdqryResidenceHeight: TStringField;
    fdqryResidenceWeight: TStringField;
    fdqryResidenceBloodType: TStringField;
    fdqryResidenceContactNumber: TStringField;
    fdqryResidenceTinNo: TStringField;
    fdqryResidenceDateCreated: TDateField;
    fdqryResidenceDateModified: TDateField;
    fdqryResidenceEmrgncyName: TStringField;
    fdqryResidenceEmrgncyAddress: TStringField;
    fdqryResidenceEmrgncyRelationship: TStringField;
    fdqryResidenceEmrgncyContactNumber: TStringField;
    fdqryResidencePicture: TMemoField;
    DSResidence: TDataSource;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    PopupMenu1: TPopupMenu;
    PrintThisRecord1: TMenuItem;
    N1: TMenuItem;
    DeleteThisRecord1: TMenuItem;
    fdtblHistoryDetails: TFDTable;
    Edit1: TEdit;
    DSTableInsert: TDataSource;
    Label3: TLabel;
    Edit2: TEdit;
    fdqryHistoryDetailsID: TFDAutoIncField;
    fdqryHistoryDetailsBarangayIdNo: TStringField;
    fdqryHistoryDetailsFName: TStringField;
    fdqryHistoryDetailsMName: TStringField;
    fdqryHistoryDetailsLName: TStringField;
    fdqryHistoryDetailsCompleteName: TStringField;
    fdqryHistoryDetailsFather: TStringField;
    fdqryHistoryDetailsMother: TStringField;
    fdqryHistoryDetailsDOB: TDateField;
    fdqryHistoryDetailsGender: TStringField;
    fdqryHistoryDetailsAddress: TStringField;
    fdqryHistoryDetailsPurok: TStringField;
    fdqryHistoryDetailsHeight: TStringField;
    fdqryHistoryDetailsWeight: TStringField;
    fdqryHistoryDetailsBloodType: TStringField;
    fdqryHistoryDetailsContactNumber: TStringField;
    fdqryHistoryDetailsTinNo: TStringField;
    fdqryHistoryDetailsDateCreated: TDateField;
    fdqryHistoryDetailsDateModified: TDateField;
    fdqryHistoryDetailsEmrgncyName: TStringField;
    fdqryHistoryDetailsEmrgncyAddress: TStringField;
    fdqryHistoryDetailsEmrgncyRelationship: TStringField;
    fdqryHistoryDetailsEmrgncyContactNumber: TStringField;
    fdqryHistoryDetailsPicture: TMemoField;
    fdqryHistoryDetailsID_1: TIntegerField;
    fdqryHistoryDetailsBrgyID: TStringField;
    fdqryHistoryDetailsDateIssued: TDateField;
    fdqryHistoryDetailsDateCreated_1: TDateField;
    fdqryHistoryDetailsDateModified_1: TDateField;
    fdqryHistoryDetailsOrNumber: TStringField;
    fdqryHistoryDetailsApproved: TStringField;
    fdqryHistoryDetailsAttested: TStringField;
    fdtblHistoryDetailsID: TFDAutoIncField;
    fdtblHistoryDetailsBrgyID: TStringField;
    fdtblHistoryDetailsDateIssued: TDateField;
    fdtblHistoryDetailsDateCreated: TDateField;
    fdtblHistoryDetailsDateModified: TDateField;
    fdtblHistoryDetailsOrNumber: TStringField;
    fdtblHistoryDetailsApproved: TStringField;
    fdtblHistoryDetailsAttested: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure PrintThisRecord1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UBarangayClearance: TUBarangayClearance;

implementation

{$R *.dfm}

uses frmReport;

procedure TUBarangayClearance.FormShow(Sender: TObject);
begin
  fdqryResidence.Close;
  fdqryResidence.Open;
end;

procedure TUBarangayClearance.PrintThisRecord1Click(Sender: TObject);
begin
   if Label2.Caption = 'Barangay Certificate' then begin
     frmReport.UReport.QRBrgyCertificate.Preview;
   end;
end;

procedure TUBarangayClearance.SpeedButton1Click(Sender: TObject);
begin
  fdtblHistoryDetails.Close;
  fdtblHistoryDetails.Open;
  fdtblHistoryDetails.Append;

end;

procedure TUBarangayClearance.SpeedButton2Click(Sender: TObject);
begin
  fdtblHistoryDetails.Edit;
end;

procedure TUBarangayClearance.SpeedButton3Click(Sender: TObject);
begin
  fdtblHistoryDetails.Cancel;
end;

procedure TUBarangayClearance.SpeedButton4Click(Sender: TObject);
begin
  if fdtblHistoryDetails.State in [dsInsert] then begin
    fdtblHistoryDetailsBrgyID.AsString := Edit1.Text;
    fdtblHistoryDetailsDateIssued.AsDateTime :=  Now();
    fdtblHistoryDetailsDateCreated.AsDateTime :=  Now();
    fdtblHistoryDetailsDateModified.AsDateTime := Now();
    fdtblHistoryDetails.Post;
  end else begin
    fdtblHistoryDetailsBrgyID.AsString := Edit1.Text;
    fdtblHistoryDetailsDateModified.AsDateTime := Now();
    fdtblHistoryDetails.Post;
  end;
    MessageDlg('Succesfully Inserted Data!',mtInformation,[mbYes],0);
end;

procedure TUBarangayClearance.SpeedButton5Click(Sender: TObject);
begin
  fdqryHistoryDetails.Close;
  fdqryHistoryDetails.ParamByName('ABarangayID').AsString := fdqryResidenceBarangayIdNo.AsString;
  fdqryHistoryDetails.Open();
  if fdqryHistoryDetails.IsEmpty then begin
    MessageDlg('No Record Found Please Search Again!!!',mtInformation,[mbYes],0);
  end else begin
    Panel6.Visible := False;
    GroupBox1.Enabled := True;
    Panel5.Enabled := True;
    Panel4.Enabled := True;
    Edit1.Text := fdqryResidenceBarangayIdNo.AsString;
    Edit2.Text := fdqryResidenceCompleteName.AsString;
  end;


end;

procedure TUBarangayClearance.SpeedButton6Click(Sender: TObject);
begin
  Self.Close;
end;

end.
