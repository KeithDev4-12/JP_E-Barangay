unit frmPreview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TUPreviewData = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    SearchBox1: TSearchBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    fdqryResidence: TFDQuery;
    DS1: TDataSource;
    fdqryResidenceID: TFDAutoIncField;
    fdqryResidenceBarangayIdNo: TStringField;
    fdqryResidenceFName: TStringField;
    fdqryResidenceMName: TStringField;
    fdqryResidenceLName: TStringField;
    fdqryResidenceCompleteName: TStringField;
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
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPreviewData: TUPreviewData;

implementation

{$R *.dfm}

uses frmReport ;

Procedure TUPreviewData.BitBtn2Click(Sender: TObject);
begin
   if Label2.Caption = 'Barangay Certificate' then begin
     frmReport.UReport.QRBrgyCertificate.Preview;
   end;

end;

procedure TUPreviewData.FormShow(Sender: TObject);
begin
  fdqryResidence.Close;
   fdqryResidence.Open;

end;

end.
