unit frmCertificateOfAppearance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TUCertificateOfAppearance = class(TForm)
    GroupBox1: TGroupBox;
    Shape1: TShape;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Shape3: TShape;
    SpeedButton3: TSpeedButton;
    Shape4: TShape;
    SpeedButton4: TSpeedButton;
    Shape5: TShape;
    Label8: TLabel;
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
    Panel5: TPanel;
    Label10: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBGridEh2: TDBGridEh;
    DSResidence: TDataSource;
    fdqryHistoryDetails: TFDQuery;
    fdtblHistoryDetails: TFDTable;
    DSTableInsert: TDataSource;
    Edit3: TEdit;
    DSHistoryDetails: TDataSource;
    DateTimePicker1: TDateTimePicker;
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
    fdqryHistoryDetailsBarangayIdNo_1: TStringField;
    fdqryHistoryDetailsSubjectOff: TStringField;
    fdqryHistoryDetailsDateIssued: TDateField;
    fdqryHistoryDetailsPurpose: TStringField;
    fdtblHistoryDetailsID: TFDAutoIncField;
    fdtblHistoryDetailsBarangayIdNo: TStringField;
    fdtblHistoryDetailsSubjectOff: TStringField;
    fdtblHistoryDetailsDateIssued: TDateField;
    fdtblHistoryDetailsPurpose: TStringField;
    procedure Panel5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSHistoryDetailsDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UCertificateOfAppearance: TUCertificateOfAppearance;

implementation

{$R *.dfm}

procedure TUCertificateOfAppearance.DSHistoryDetailsDataChange(Sender: TObject;
  Field: TField);
begin
  if fdqryResidence.State IN [dsBrowse] then begin
    fdtblHistoryDetails.Close;
    fdtblHistoryDetails.Open;
    if fdtblHistoryDetails.Locate('ID',fdqryHistoryDetailsID_1.AsInteger,[]) then begin
      Edit3.Text := fdtblHistoryDetailsPurpose.AsString;
    end;
  end;
end;

procedure TUCertificateOfAppearance.FormShow(Sender: TObject);
begin
  fdqryResidence.Close;
  fdqryResidence.Open;
  DateTimePicker1.DateTime := Now();
  //fdtblHistoryDetails.Close;
  //fdtblHistoryDetails.Open;
end;

procedure TUCertificateOfAppearance.Panel5Click(Sender: TObject);
begin
  fdqryHistoryDetails.Close;
  fdqryHistoryDetails.ParamByName('ABarangayID').AsString := fdqryResidenceBarangayIdNo.AsString;
  fdqryHistoryDetails.Open();
  if fdqryHistoryDetails.IsEmpty then begin
    MessageDlg('No Record Found Please Search Again!!!',mtInformation,[mbYes],0);
  end else begin
    Panel5.Visible := False;
    GroupBox1.Enabled := True;
    Panel4.Enabled := True;
    Panel3.Enabled := True;
    Edit1.Text := fdqryResidenceBarangayIdNo.AsString;
    Edit2.Text := fdqryResidenceCompleteName.AsString;
  end;
end;

procedure TUCertificateOfAppearance.SpeedButton1Click(Sender: TObject);
begin
  fdtblHistoryDetails.Close;
  fdtblHistoryDetails.Open;
  fdtblHistoryDetails.Append;
end;

procedure TUCertificateOfAppearance.SpeedButton2Click(Sender: TObject);
begin
  fdtblHistoryDetails.Edit;
  //DateTimePicker1.DateTime := fdtblHistoryDetailsDateIssued.AsDateTime;
  //Edit3.Text := fdtblHistoryDetailsPurpose.AsString;
  //Edit1.Text := fdtblHistoryDetailsBarangayIdNo.AsString;
end;

procedure TUCertificateOfAppearance.SpeedButton3Click(Sender: TObject);
begin
  fdtblHistoryDetails.Cancel;
end;

procedure TUCertificateOfAppearance.SpeedButton4Click(Sender: TObject);
begin
  if fdtblHistoryDetails.State in [dsInsert] then begin

    fdtblHistoryDetailsBarangayIdNo.AsString := Edit1.Text;
    fdtblHistoryDetailsPurpose.AsString := Edit3.Text;
    fdtblHistoryDetails.Post;
  end else begin
    fdtblHistoryDetailsBarangayIdNo.AsString := Edit1.Text;
    fdtblHistoryDetailsPurpose.AsString := Edit3.Text;
    fdtblHistoryDetails.Post;
  end;
    MessageDlg('Succesfully Inserted Data!',mtInformation,[mbYes],0);
end;

procedure TUCertificateOfAppearance.SpeedButton5Click(Sender: TObject);
begin
  fdqryHistoryDetails.Close;
  fdqryHistoryDetails.ParamByName('ABarangayID').AsString := fdqryResidenceBarangayIdNo.AsString;
  fdqryHistoryDetails.Open();
  if fdqryHistoryDetails.IsEmpty then begin
    MessageDlg('No Record Found Please Search Again!!!',mtInformation,[mbYes],0);
  end else begin
    Panel5.Visible := False;
    GroupBox1.Enabled := True;
    Panel4.Enabled := True;
    Panel3.Enabled := True;
    Edit1.Text := fdqryResidenceBarangayIdNo.AsString;
    Edit2.Text := fdqryResidenceCompleteName.AsString;
  end;

end;

procedure TUCertificateOfAppearance.SpeedButton6Click(Sender: TObject);
begin
  Self.Close
end;

end.
