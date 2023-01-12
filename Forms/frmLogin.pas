unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TULogin = class(TForm)
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Image2: TImage;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Image3: TImage;
    Image1: TImage;
    Shape3: TShape;
    Shape4: TShape;
    qryLogin: TFDQuery;
    qryLoginID: TFDAutoIncField;
    qryLoginFName: TStringField;
    qryLoginMName: TStringField;
    qryLoginLname: TStringField;
    qryLoginFullName: TStringField;
    qryLoginDOB: TDateField;
    qryLoginGender: TStringField;
    qryLoginUserName: TStringField;
    qryLoginPassword: TStringField;
    qryLoginUserStatus: TStringField;
    qryLoginDateCreated: TDateField;
    qryLoginDateModified: TDateField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LogInChecking(AUserName,APassword:String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ULogin: TULogin;

implementation
uses frmMainMenu, MainDataModule;

{$R *.dfm}

procedure TULogin.Button1Click(Sender: TObject);
begin
 If not assigned(UMainMenu) then
 UMainMenu := TUMainMenu.Create(Application);
 //ModConnection.AEmployeeID := 1;

 qryLogin.Close;
 qryLogin.ParamByName('APassword').AsString := Edit2.Text;
 qryLogin.Open;
 qryLogin.First;
 if qryLogin.Locate('UserName',edit1.Text,[]) then begin
   UMainMenu.Width := 0;
   UMainMenu.Height := 0;
   //FLogin.WindowState := wsMinimized;
   UMainMenu.Show;
 end else begin
   MessageDlg('Password Or Username are Not Found!',mtError,[mbClose],0) ;
 end;
end;

procedure TULogin.Button2Click(Sender: TObject);
begin
Close;

  Application.Terminate;
end;

procedure TULogin.LogInChecking(AUserName, APassword: String);
begin
  qryLogin.Close;
  qryLogin.ParamByName('').AsString := AUserName;
  qryLogin.Close;


end;

end.
