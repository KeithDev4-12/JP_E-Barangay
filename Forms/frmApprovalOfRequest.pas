unit frmApprovalOfRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls;

type
  TUApprovalOfRequest = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Panel4: TPanel;
    pnlBarangayID: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    qryApproval: TFDQuery;
    DSApprovalData: TDataSource;
    qryApprovalID: TIntegerField;
    qryApprovalStatus: TStringField;
    qryApprovalKindTable: TStringField;
    qryApprovalBrgyID: TStringField;
    qryApprovalFKID: TIntegerField;
    qryApprovalID_1: TIntegerField;
    qryApprovalBarangayIdNo: TStringField;
    qryApprovalFName: TStringField;
    qryApprovalMName: TStringField;
    qryApprovalLName: TStringField;
    qryApprovalCompleteName: TStringField;
    qryApprovalFather: TStringField;
    qryApprovalMother: TStringField;
    qryApprovalDOB: TDateField;
    qryApprovalGender: TStringField;
    qryApprovalAddress: TStringField;
    qryApprovalPurok: TStringField;
    qryApprovalHeight: TStringField;
    qryApprovalWeight: TStringField;
    qryApprovalBloodType: TStringField;
    qryApprovalContactNumber: TStringField;
    qryApprovalTinNo: TStringField;
    qryApprovalDateCreated: TDateField;
    qryApprovalDateModified: TDateField;
    qryApprovalEmrgncyName: TStringField;
    qryApprovalEmrgncyAddress: TStringField;
    qryApprovalEmrgncyRelationship: TStringField;
    qryApprovalEmrgncyContactNumber: TStringField;
    qryApprovalPicture: TMemoField;
    tblApproval: TFDTable;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DStblApproval: TDataSource;
    tblApprovalID: TFDAutoIncField;
    tblApprovalBrgyID: TStringField;
    tblApprovalDateIssued: TDateField;
    tblApprovalIssuedAt: TStringField;
    tblApprovalAttested: TStringField;
    procedure OpenApprovalData(SV:String);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure DSApprovalDataDataChange(Sender: TObject; Field: TField);
    procedure FindOtherData(SA:String);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UApprovalOfRequest: TUApprovalOfRequest;

implementation

{$R *.dfm}

uses MainDataModule;

procedure TUApprovalOfRequest.DBGridEh1DblClick(Sender: TObject);
begin
  FindOtherData(qryApprovalID.AsString);
  tblApproval.Edit;
end;

procedure TUApprovalOfRequest.DSApprovalDataDataChange(Sender: TObject;
  Field: TField);
begin
  Edit1.Text := qryApprovalBarangayIdNo.AsString;
  Edit2.Text := qryApprovalCompleteName.AsString;
  //FindOtherData(qryApprovalID.AsString);

  if qryApproval.State IN [dsBrowse] then begin
    tblApproval.Close;
    tblApproval.Open;
    if tblApproval.Locate('ID',qryApprovalID.AsString,[]) then begin
      //Edit3.Text := fdtblHistoryDetailsPurpose.AsString;
    end;
  end;
end;

procedure TUApprovalOfRequest.FindOtherData(SA:String);
begin
  tblApproval.Locate('ID',SA,[])
end;

procedure TUApprovalOfRequest.FormShow(Sender: TObject);
begin
  OpenApprovalData('tblbarangayid');
  
end;

procedure TUApprovalOfRequest.OpenApprovalData(SV: String);
begin
  qryApproval.Close;
  qryApproval.ParamByName('ATableName').AsString := SV;
  qryApproval.Open;
end;

procedure TUApprovalOfRequest.RadioButton1Click(Sender: TObject);
begin
   OpenApprovalData('tblbarangayid');
end;

procedure TUApprovalOfRequest.RadioButton2Click(Sender: TObject);
begin
   OpenApprovalData('tblcertificateofappearance');
end;

procedure TUApprovalOfRequest.RadioButton3Click(Sender: TObject);
begin
   OpenApprovalData('tblbarangayclearance');
end;

procedure TUApprovalOfRequest.RadioButton4Click(Sender: TObject);
begin
   OpenApprovalData('tblbarangaycertificate');
end;

end.
