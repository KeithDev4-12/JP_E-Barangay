unit frmPreview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

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
    procedure BitBtn2Click(Sender: TObject);
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

end.
