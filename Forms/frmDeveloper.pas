unit frmDeveloper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TUDeveloper = class(TForm)
    Image1: TImage;
    Image2: TImage;
    RichEdit1: TRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UDeveloper: TUDeveloper;

implementation

{$R *.dfm}

end.
