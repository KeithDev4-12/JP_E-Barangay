unit frmAccountProfileInformation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, PrnDbgeh, Vcl.ExtCtrls,
  Vcl.Buttons, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TUAccountProfileInformation = class(TForm)
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    PrintDBGridEh1: TPrintDBGridEh;
    fdqryAccountProfile: TFDQuery;
    fdqryAccountProfileID: TFDAutoIncField;
    fdqryAccountProfileFName: TStringField;
    fdqryAccountProfileMName: TStringField;
    fdqryAccountProfileLname: TStringField;
    fdqryAccountProfileFullName: TStringField;
    fdqryAccountProfileDOB: TDateField;
    fdqryAccountProfileUserName: TStringField;
    fdqryAccountProfilePassword: TStringField;
    fdqryAccountProfileUserStatus: TStringField;
    fdqryAccountProfileDateCreated: TDateField;
    fdqryAccountProfileDateModified: TDateField;
    fdqryAccountProfileGender: TStringField;
    DSAccountProfile: TDataSource;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UAccountProfileInformation: TUAccountProfileInformation;

implementation

{$R *.dfm}

procedure TUAccountProfileInformation.SpeedButton1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TUAccountProfileInformation.SpeedButton2Click(Sender: TObject);
begin
   PrintDBGridEh1.Preview
end;

end.
