unit frmAccountProfile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ComCtrls, Vcl.StdCtrls, DBCtrlsEh, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.WinXCtrls, dxGDIPlusClasses, Vcl.ExtCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus;

type
  TUAccountProfile = class(TForm)
    GroupBox1: TGroupBox;
    Shape2: TShape;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    SearchBox1: TSearchBox;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    Shape4: TShape;
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label24: TLabel;
    Shape9: TShape;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Label14: TLabel;
    Label15: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DSAccountProfile: TDataSource;
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
    fdqryCount: TFDQuery;
    fdqryCountIDC: TLargeintField;
    fdqryAccountProfileGender: TStringField;
    PopupMenu1: TPopupMenu;
    DeleteData1: TMenuItem;
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DSAccountProfileDataChange(Sender: TObject; Field: TField);
    procedure SearchBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UAccountProfile: TUAccountProfile;
  SName : String;

implementation

{$R *.dfm}

uses MainDataModule;

procedure TUAccountProfile.DBEdit2Change(Sender: TObject);
begin
  Label7.Caption := DBEdit4.Text + ', ' + DBEdit2.Text + ' ' + DBEdit3.Text;
  SName := Label7.Caption;
end;

procedure TUAccountProfile.DSAccountProfileDataChange(Sender: TObject;
  Field: TField);
begin
  if fdqryAccountProfile.State = dsBrowse then begin
    Label7.Caption := fdqryAccountProfileFullName.AsString;
    Edit1.Text := fdqryAccountProfilePassword.AsString;
    Edit2.Text := fdqryAccountProfilePassword.AsString;
    Combobox1.ItemIndex := ComboBox1.Items.IndexOf(fdqryAccountProfileUserStatus.AsString);
    DateTimePicker1.DateTime :=  fdqryAccountProfileDateCreated.AsDateTime;
    DateTimePicker2.DateTime := Now();
     if fdqryAccountProfileGender.AsString = 'Male' then begin
      RadioButton1.Checked := True;
    end;
    if fdqryAccountProfileGender.AsString = 'Female' then begin
      RadioButton2.Checked := True;
    end;
    if fdqryAccountProfileGender.AsString = 'Others' then begin
      RadioButton3.Checked := True;
    end;
  end;
end;

procedure TUAccountProfile.SearchBox1Change(Sender: TObject);
begin
  DBGridEh1.SearchPanel.SearchingText := SearchBox1.Text;
end;

procedure TUAccountProfile.SpeedButton1Click(Sender: TObject);
begin
  With DM do begin
    EnableDataSet(fdqryAccountProfile,True);
    fdqryAccountProfile.Edit;
  end;
end;

procedure TUAccountProfile.SpeedButton2Click(Sender: TObject);
begin

  if RadioButton1.Checked then begin
    fdqryAccountProfileGender.AsString := 'Male';
  end;
  if RadioButton2.Checked then begin
    fdqryAccountProfileGender.AsString := 'Female';
  end;
  if RadioButton3.Checked then begin
    fdqryAccountProfileGender.AsString := 'Others';
  end;

  if Edit1.Text = Edit2.Text then begin
    fdqryAccountProfilePassword.AsString := Edit1.Text;
  end else begin
   ShowMessage('Password are not matched!!');
    Exit;
  end;
  fdqryAccountProfileFullName.AsString := SName;
  fdqryAccountProfileUserStatus.AsString := Combobox1.Text;
  fdqryAccountProfileDateCreated.AsDateTime := DateTimePicker1.Date;
  fdqryAccountProfileDateModified.AsDateTime := DateTimePicker2.Date;
  if fdqryAccountProfile.State = dsInsert then begin
    MessageDlg('Data has been Inserted!',mtInformation,[mbClose],0);
    fdqryAccountProfile.Post;
  end else if fdqryAccountProfile.State = dsEdit then begin
    MessageDlg('Data has been Updated!',mtInformation,[mbClose],0);
    fdqryAccountProfile.Post;
  end;
end;

procedure TUAccountProfile.SpeedButton3Click(Sender: TObject);
begin
  With DM do begin
    EnableDataSet(fdqryAccountProfile,False);
    fdqryAccountProfile.Cancel;
  end;
end;

procedure TUAccountProfile.SpeedButton4Click(Sender: TObject);
begin
  With DM do begin
    EnableDataSet(fdqryAccountProfile,False);
    fdqryAccountProfile.Cancel;
    Close;
  end;
end;

procedure TUAccountProfile.SpeedButton5Click(Sender: TObject);
begin
  With DM do begin
    EnableDataSet(fdqryAccountProfile,True);
    fdqryAccountProfile.Append;
    //fdqryCount.Close;
    //fdqryCount.Open;
    //DBEdit1.Text := fdqryCountIDC.AsString;
    DateTimePicker1.DateTime := Now();
    DateTimePicker2.DateTime := Now();
  end;
end;

end.
