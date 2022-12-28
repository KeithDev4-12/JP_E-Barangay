unit frmHistoryIssuance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TUHistoryIssuance = class(TForm)
    GroupBox1: TGroupBox;
    Shape2: TShape;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    SearchBox1: TSearchBox;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Shape1: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    SpeedButton5: TSpeedButton;
    Shape7: TShape;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UHistoryIssuance: TUHistoryIssuance;

implementation

{$R *.dfm}

end.
