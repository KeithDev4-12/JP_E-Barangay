unit frmResidence;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.WinXCtrls, dxGDIPlusClasses, Vcl.Mask,
  Vcl.DBCtrls, DBCtrlsEh, Vcl.ComCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtDlgs,IWSystem, Vcl.Menus;

type
  TUResidence = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label8: TLabel;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label10: TLabel;
    DBRichEdit1: TDBRichEdit;
    Label11: TLabel;
    DBRichEdit2: TDBRichEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    ComboBox1: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    MaskEdit1: TMaskEdit;
    Label19: TLabel;
    ComboBox2: TComboBox;
    Label20: TLabel;
    Label21: TLabel;
    Shape6: TShape;
    Label22: TLabel;
    ComboBox3: TComboBox;
    Label23: TLabel;
    Label24: TLabel;
    Shape7: TShape;
    MaskEdit2: TMaskEdit;
    Shape2: TShape;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Image1: TImage;
    Label1: TLabel;
    SearchBox1: TSearchBox;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Shape1: TShape;
    Shape3: TShape;
    Shape5: TShape;
    SpeedButton2: TSpeedButton;
    Shape4: TShape;
    Shape8: TShape;
    SpeedButton5: TSpeedButton;
    Shape9: TShape;
    RadioButton3: TRadioButton;
    DSResidence: TDataSource;
    fdqryResidence: TFDQuery;
    MaskEdit3: TMaskEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel6: TPanel;
    Image2: TImage;
    BitBtn3: TBitBtn;
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
    fdqryEmrContact: TFDQuery;
    fdqryEmrContactCompleteName: TStringField;
    RichEdit1: TRichEdit;
    fdqryCount: TFDQuery;
    fdqryCountIDC: TLargeintField;
    PopupMenu1: TPopupMenu;
    DeleteThis1: TMenuItem;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    fdqryResidenceFather: TStringField;
    fdqryResidenceMother: TStringField;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DSResidenceDataChange(Sender: TObject; Field: TField);
    procedure SearchBox1Change(Sender: TObject);
    procedure DeleteThis1Click(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UResidence: TUResidence;
  LocationPaste :String ;

implementation

{$R *.dfm}

uses MainDataModule;

procedure TUResidence.BitBtn2Click(Sender: TObject);
begin
  if fdqryResidence.State IN [dsInsert,dsEdit] then begin
    fdqryCount.Close;
    fdqryCount.Open;
    DBEdit1.Text := 'JP-ID#' + fdqryCountIDC.AsString;
  end;
end;

procedure TUResidence.BitBtn3Click(Sender: TObject);
Var
  ExtImage : String;
begin
  if fdqryResidence.State IN [dsInsert,dsEdit] then begin

  end else begin
    MessageDlg('Cannot Upload Image, Please Click New Data',mtWarning,[mbClose],0);
    Exit;
  end;

  if OpenPictureDialog1.Execute(Self.Handle) then begin

    ExtImage := ExtractFileExt(OpenPictureDialog1.FileName);
    //Showmessage(OpenPictureDialog1.FileName);
    //Showmessage(gsAppPath + 'ImageBRGY\'+DBEdit1.Text +ExtImage);
    LocationPaste := gsAppPath + 'ImageBRGY\'+DBEdit1.Text +ExtImage;
    CopyFile(PChar(OpenPictureDialog1.FileName), PChar(LocationPaste), False);
    Image2.Picture.LoadFromFile(LocationPaste);
  end;
end;

procedure TUResidence.DBEdit2Change(Sender: TObject);
begin
  Label7.Caption := DBEdit4.Text + ', ' + DBEdit2.Text + ' ' + DBEdit3.Text;
end;

procedure TUResidence.DBEdit7Change(Sender: TObject);
begin
  Combobox2.Items.Clear;
  Combobox2.Items.Add(DBEdit7.Text);
  Combobox2.Items.Add(DBEdit8.Text);
end;

procedure TUResidence.DeleteThis1Click(Sender: TObject);
begin
  fdqryResidence.Delete;
end;

procedure TUResidence.DSResidenceDataChange(Sender: TObject; Field: TField);
Var
  ImagePath:String;
begin

  if fdqryResidence.State = dsBrowse then begin

    //LocationPaste := fdqryResidencePicture.AsString;
    ImagePath := fdqryResidencePicture.AsString;
    try


      if fdqryResidenceGender.AsString = 'Male' then begin
        RadioButton1.Checked := True;
      end;
      if fdqryResidenceGender.AsString = 'Female' then begin
        RadioButton2.Checked := True;
      end;
      if fdqryResidenceGender.AsString = 'Others' then begin
        RadioButton3.Checked := True;
      end;

      MaskEdit1.Text := fdqryResidenceTinNo.AsString;
      MaskEdit2.Text := fdqryResidenceContactNumber.AsString;
      MaskEdit3.Text := fdqryResidenceEmrgncyContactNumber.AsString;
      RichEdit1.Text := fdqryResidenceEmrgncyAddress.AsString;
      Label7.Caption := fdqryResidenceCompleteName.AsString;

      Combobox1.ItemIndex := ComboBox1.Items.IndexOf(fdqryResidenceBloodType.AsString);
      Combobox2.ItemIndex := Combobox2.Items.IndexOf(fdqryResidenceEmrgncyName.AsString);
      Combobox3.ItemIndex := Combobox3.Items.IndexOf(fdqryResidenceEmrgncyRelationship.AsString);
      Image2.Picture.LoadFromFile(ImagePath);

     except
      // IO error
       On E : EInvalidGraphic do begin
         Image2.Picture.LoadFromFile(gsAppPath +'ImageBRGY\Default.png');
       end;
     end;
  end;
end;

procedure TUResidence.FormShow(Sender: TObject);
begin
  fdqryResidence.Close;
  fdqryResidence.Open;

  //Combobox2.Items.Clear;
  //fdqryEmrContact.Close;
  //fdqryEmrContact.Open();
  //fdqryEmrContact.First;
  //while not fdqryEmrContact.EOF do begin
  //  Combobox2.Items.Add(fdqryEmrContactCompleteName.AsString);
  //  fdqryEmrContact.Next;
  //end;


end;

procedure TUResidence.SearchBox1Change(Sender: TObject);
begin
  DBGridEh1.SearchPanel.SearchingText := SearchBox1.Text;
end;

procedure TUResidence.SpeedButton1Click(Sender: TObject);
begin
  if fdqryResidence.State IN [dsBrowse] then begin

    fdqryResidence.UpdateOptions.EnableUpdate := True;
    fdqryResidence.Edit;
    LocationPaste := fdqryResidencePicture.AsString;
    DBEdit1.Enabled := False;
    BitBtn2.Enabled := False;
  end;
end;

procedure TUResidence.SpeedButton2Click(Sender: TObject);
begin
  if Length(LocationPaste) = 0 then begin
    MessageDlg('Profile Picture are Needed!',mtInformation,[mbClose],0);
    Exit;
  end;

  fdqryResidenceCompleteName.AsString := Label7.Caption;
  if RadioButton1.Checked then begin
    fdqryResidenceGender.AsString := 'Male';
  end;
  if RadioButton2.Checked then begin
    fdqryResidenceGender.AsString := 'Female';
  end;
  if RadioButton3.Checked then begin
    fdqryResidenceGender.AsString := 'Others';
  end;
  fdqryResidenceContactNumber.AsString := MaskEdit2.Text;
  fdqryResidenceBloodType.AsString := Combobox1.Text;
  fdqryResidenceTinNo.AsString := MaskEdit1.Text;
  fdqryResidenceEmrgncyName.AsString := ComboBox2.Text;
  fdqryResidenceEmrgncyRelationship.AsString := ComboBox3.Text;
  fdqryResidenceEmrgncyContactNumber.AsString := MaskEdit3.Text;
  fdqryResidencePicture.AsString := LocationPaste;
  fdqryResidenceEmrgncyAddress.AsString := RichEdit1.Text;
  fdqryResidenceDateCreated.AsDateTime := Now();
  fdqryResidenceDateModified.AsDateTime := Now();
  if fdqryResidence.State = dsInsert then begin


    MessageDlg('Data has been Inserted!',mtInformation,[mbClose],0);
    fdqryResidence.Post;

  end else if fdqryResidence.State = dsEdit then begin
    MessageDlg('Data has been Updated!',mtInformation,[mbClose],0);
    fdqryResidence.Post;
    DBEdit1.Enabled := True;
    BitBtn2.Enabled := True;
  end;

  //fdProductImage.Close;
  //fdProductImage.Open();
  fdqryResidence.UpdateOptions.EnableInsert := True;
  fdqryResidence.UpdateOptions.EnableUpdate := True;
end;

procedure TUResidence.SpeedButton3Click(Sender: TObject);
begin
  fdqryResidence.UpdateOptions.EnableInsert := False;
  fdqryResidence.UpdateOptions.EnableUpdate := False;
  fdqryResidence.Cancel;
  LocationPaste := '';
end;

procedure TUResidence.SpeedButton4Click(Sender: TObject);
begin
  fdqryResidence.UpdateOptions.EnableInsert := False;
  fdqryResidence.UpdateOptions.EnableUpdate := False;
  fdqryResidence.Cancel;
  Self.Close;
end;

procedure TUResidence.SpeedButton5Click(Sender: TObject);
begin
  if fdqryResidence.state IN [dsBrowse] then begin
    fdqryResidence.UpdateOptions.EnableInsert := True;
    fdqryResidence.Append;
    fdqryCount.Close;
    fdqryCount.Open;

    DBEdit1.Text := 'JP-ID#' + fdqryCountIDC.AsString;
  end;

end;

end.
