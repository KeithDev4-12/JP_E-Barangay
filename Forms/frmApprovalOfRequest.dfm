object UApprovalOfRequest: TUApprovalOfRequest
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'UApprovalOfRequest'
  ClientHeight = 547
  ClientWidth = 688
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 97
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 225
    Height = 547
    Align = alLeft
    Caption = 'GroupBox1'
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 32
    ExplicitHeight = 440
    object Panel1: TPanel
      Left = 2
      Top = 138
      Width = 23
      Height = 407
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 15
      ExplicitHeight = 423
    end
    object Panel2: TPanel
      Left = 200
      Top = 138
      Width = 23
      Height = 407
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 15
      ExplicitHeight = 423
    end
    object Panel3: TPanel
      Left = 25
      Top = 138
      Width = 175
      Height = 407
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 15
      ExplicitWidth = 23
      ExplicitHeight = 423
      object RadioButton1: TRadioButton
        Left = 0
        Top = 0
        Width = 175
        Height = 17
        Align = alTop
        Caption = 'Barangay ID'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
        ExplicitLeft = 56
        ExplicitTop = 128
        ExplicitWidth = 113
      end
      object RadioButton2: TRadioButton
        Left = 0
        Top = 17
        Width = 175
        Height = 17
        Align = alTop
        Caption = 'Certificate Of Appearance'
        TabOrder = 1
        OnClick = RadioButton2Click
        ExplicitLeft = -6
        ExplicitTop = 56
      end
      object RadioButton3: TRadioButton
        Left = 0
        Top = 51
        Width = 175
        Height = 17
        Align = alTop
        Caption = 'Barangay Clearance'
        TabOrder = 2
        OnClick = RadioButton3Click
        ExplicitLeft = 6
        ExplicitTop = 57
      end
      object RadioButton4: TRadioButton
        Left = 0
        Top = 34
        Width = 175
        Height = 17
        Align = alTop
        Caption = 'Barangay Certificate'
        TabOrder = 3
        OnClick = RadioButton4Click
        ExplicitLeft = 6
      end
      object RadioButton5: TRadioButton
        Left = 0
        Top = 68
        Width = 175
        Height = 17
        Align = alTop
        Caption = 'Barangay Business Certificate'
        TabOrder = 4
        ExplicitLeft = 6
        ExplicitTop = 91
      end
      object RadioButton6: TRadioButton
        Left = 0
        Top = 85
        Width = 175
        Height = 17
        Align = alTop
        Caption = 'Certificate Of Indigency'
        TabOrder = 5
        ExplicitLeft = 6
        ExplicitTop = 121
      end
      object RadioButton7: TRadioButton
        Left = 0
        Top = 102
        Width = 175
        Height = 17
        Align = alTop
        Caption = 'Blotter'
        TabOrder = 6
        ExplicitLeft = 6
        ExplicitTop = 125
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 15
      Width = 221
      Height = 123
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 221
        Height = 118
        Align = alTop
        DataSource = DSApprovalData
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        TabOrder = 0
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BarangayIdNo'
            Footers = <>
            Title.Caption = 'Brgy Id No'
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CompleteName'
            Footers = <>
            Title.Caption = 'Complete Name'
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KindTable'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BrgyID'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FKID'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_1'
            Footers = <>
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object pnlBarangayID: TPanel
    Left = 231
    Top = 8
    Width = 425
    Height = 251
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 425
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'BARANGAY ID'
      ExplicitTop = 80
    end
    object Label2: TLabel
      Left = 48
      Top = 50
      Width = 67
      Height = 13
      Caption = 'Barangay ID :'
    end
    object Label3: TLabel
      Left = 48
      Top = 77
      Width = 79
      Height = 13
      Caption = 'Resident Name :'
    end
    object Label4: TLabel
      Left = 48
      Top = 105
      Width = 65
      Height = 13
      Caption = 'Date Issued :'
    end
    object Label5: TLabel
      Left = 48
      Top = 133
      Width = 53
      Height = 13
      Caption = 'Issued At :'
    end
    object Label6: TLabel
      Left = 48
      Top = 163
      Width = 64
      Height = 13
      Caption = 'Attested By :'
    end
    object Panel5: TPanel
      Left = 0
      Top = 210
      Width = 425
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 32
      ExplicitTop = 144
      ExplicitWidth = 185
      object SpeedButton1: TSpeedButton
        Left = 112
        Top = 0
        Width = 127
        Height = 41
        Align = alLeft
        Caption = 'Approved'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000828282FF828282FF828282FF828282FF828282FF828282FF8282
          82FF828282FF828282FF828282FF000000000000000000000000000000000000
          000000000000828282FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF828282FF000000000000000000000000000000000000
          000000000000828282FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF828282FF000000000000000000000000000000000000
          000000000000828282FF828282FF828282FF848484FF848484FF848484FF8484
          84FF848484FF848484FF828282FF000000000000000000000000000000000000
          000000000000828282FF828282FF828282FF828282FF848484FF848484FF8484
          84FF848484FF848484FF828282FF000000000000000000000000000000000000
          000000000000828282FF848484FF848484FF848484FF848484FF848484FF0000
          00000000000000000000828282FF000000000000000000000000000000000000
          0000000000000000000000000000848484FF848484FF848484FF848484FF0000
          00000000000000000000828282FF000000000000000000000000000000000000
          0000000000004FB5EAFF000000000000000000000000828282FF828282FF8282
          82FF828282FF828282FF828282FF000000000000000000000000000000004FB5
          EAFF10242F334FB5EAFF10242F334FB5EAFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001024
          2F334FB5EAFF4FB5EAFF4FB5EAFF10242F330000000000000000828282FF8282
          82FF828282FF828282FF828282FF0000000000000000000000004FB5EAFF4FB5
          EAFF4FB5EAFF000000004FB5EAFF4FB5EAFF4FB5EAFF00000000828282FF8282
          82FF828282FF828282FF828282FF000000000000000000000000000000001024
          2F334FB5EAFF4FB5EAFF4FB5EAFF10242F330000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB5
          EAFF10242F334FB5EAFF10242F334FB5EAFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004FB5EAFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ExplicitLeft = 253
      end
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 0
        Width = 109
        Height = 41
        Align = alLeft
        Caption = 'Reject'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000002525
          25473A3A3A700000000000000000000000000000000000000000000000000000
          00000000000000000000000000003D3D3D752525254700000000252525477F7F
          7FF6848484FF3C3C3C7300000000000000000000000000000000000000000000
          000000000000000000003E3E3E77848484FF808080F7252525474040407B8484
          84FF848484FF848484FF3C3C3C73000000000000000000000000000000000000
          0000000000003E3E3E77848484FF848484FF848484FF3F3F3F7A000000004242
          427F848484FF848484FF848484FF3C3C3C730000000000000000000000000000
          00003E3E3E77848484FF848484FF848484FF4141417E00000000000000000000
          00004242427F848484FF848484FF848484FF3C3C3C7300000000000000003E3E
          3E77848484FF848484FF848484FF4141417E0000000000000000000000000000
          0000000000004242427F848484FF848484FF848484FF3C3C3C733E3E3E778484
          84FF848484FF848484FF4141417E000000000000000000000000000000000000
          000000000000000000004242427F848484FF848484FF848484FF848484FF8484
          84FF848484FF4141417E00000000000000000000000000000000000000000000
          00000000000000000000000000004242427F848484FF848484FF848484FF8484
          84FF4141417E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003E3E3E77848484FF848484FF848484FF8484
          84FF3C3C3C740000000000000000000000000000000000000000000000000000
          000000000000000000003E3E3E77848484FF848484FF848484FF848484FF8484
          84FF848484FF3C3C3C7400000000000000000000000000000000000000000000
          0000000000003E3E3E77848484FF848484FF848484FF4141417E4242427F8484
          84FF848484FF848484FF3C3C3C74000000000000000000000000000000000000
          00003E3E3E77848484FF848484FF848484FF4141417D00000000000000004242
          427F848484FF848484FF848484FF3C3C3C740000000000000000000000003E3E
          3E77848484FF848484FF848484FF4141417D0000000000000000000000000000
          00004242427F848484FF848484FF848484FF3C3C3C74000000003D3D3D758484
          84FF848484FF848484FF4141417D000000000000000000000000000000000000
          0000000000004242427F848484FF848484FF848484FF3B3B3B722828284D8181
          81F9848484FF4141417D00000000000000000000000000000000000000000000
          000000000000000000004242427F848484FF818181F92828284E000000002828
          284D3F3F3F7A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004040407B2828284D00000000}
        ParentFont = False
        ExplicitLeft = 8
      end
      object SpeedButton3: TSpeedButton
        Left = 264
        Top = 0
        Width = 161
        Height = 41
        Align = alRight
        Caption = 'Update Record'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000562D
          4580AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FF562D45800000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
      end
      object Shape1: TShape
        Left = 109
        Top = 0
        Width = 3
        Height = 41
        Align = alLeft
        Brush.Color = clMedGray
        Pen.Color = clWhite
        Pen.Mode = pmNotXor
        ExplicitLeft = 115
        ExplicitTop = 8
      end
    end
    object Edit1: TEdit
      Left = 153
      Top = 47
      Width = 204
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = 'Barangay ID'
    end
    object Edit2: TEdit
      Left = 153
      Top = 74
      Width = 204
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = 'Name'
    end
    object DBEdit1: TDBEdit
      Left = 153
      Top = 102
      Width = 204
      Height = 21
      DataField = 'DateIssued'
      DataSource = DStblApproval
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 153
      Top = 130
      Width = 204
      Height = 21
      DataField = 'IssuedAt'
      DataSource = DStblApproval
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 153
      Top = 160
      Width = 204
      Height = 21
      DataField = 'Attested'
      DataSource = DStblApproval
      TabOrder = 5
    end
  end
  object qryApproval: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from tblApproval a inner join '
      'tblresidence r on a.BrgyID = r.BarangayIdNo'
      '  where a.Status <> '#39'APPROVED'#39' '
      'and '
      '  KindTable = :ATableName')
    Left = 16
    Top = 272
    ParamData = <
      item
        Name = 'ATABLENAME'
        DataType = ftWideString
        ParamType = ptInput
        Value = 'tblbarangayid'
      end>
    object qryApprovalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryApprovalStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = 'Status'
      Size = 45
    end
    object qryApprovalKindTable: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'KindTable'
      Origin = 'KindTable'
      Size = 45
    end
    object qryApprovalBrgyID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BrgyID'
      Origin = 'BrgyID'
      Size = 45
    end
    object qryApprovalFKID: TIntegerField
      FieldName = 'FKID'
      Origin = 'FKID'
      Required = True
    end
    object qryApprovalID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryApprovalBarangayIdNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BarangayIdNo'
      Origin = 'BarangayIdNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalFName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FName'
      Origin = 'FName'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalMName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MName'
      Origin = 'MName'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalLName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LName'
      Origin = 'LName'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalCompleteName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CompleteName'
      Origin = 'CompleteName'
      ProviderFlags = []
      ReadOnly = True
      Size = 99
    end
    object qryApprovalFather: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Father'
      Origin = 'Father'
      ProviderFlags = []
      ReadOnly = True
      Size = 99
    end
    object qryApprovalMother: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Mother'
      Origin = 'Mother'
      ProviderFlags = []
      ReadOnly = True
      Size = 99
    end
    object qryApprovalDOB: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DOB'
      Origin = 'DOB'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryApprovalGender: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Gender'
      Origin = 'Gender'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalAddress: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Address'
      Origin = 'Address'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryApprovalPurok: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Purok'
      Origin = 'Purok'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalHeight: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Height'
      Origin = 'Height'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalWeight: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Weight'
      Origin = 'Weight'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalBloodType: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BloodType'
      Origin = 'BloodType'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalContactNumber: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ContactNumber'
      Origin = 'ContactNumber'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalTinNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TinNo'
      Origin = 'TinNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalDateCreated: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryApprovalDateModified: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryApprovalEmrgncyName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmrgncyName'
      Origin = 'EmrgncyName'
      ProviderFlags = []
      ReadOnly = True
      Size = 99
    end
    object qryApprovalEmrgncyAddress: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmrgncyAddress'
      Origin = 'EmrgncyAddress'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryApprovalEmrgncyRelationship: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmrgncyRelationship'
      Origin = 'EmrgncyRelationship'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalEmrgncyContactNumber: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmrgncyContactNumber'
      Origin = 'EmrgncyContactNumber'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryApprovalPicture: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Picture'
      Origin = 'Picture'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object DSApprovalData: TDataSource
    DataSet = qryApproval
    OnDataChange = DSApprovalDataDataChange
    Left = 65
    Top = 258
  end
  object tblApproval: TFDTable
    IndexFieldNames = 'ID'
    Connection = DM.FDConnection1
    UpdateOptions.UpdateTableName = 'jplaureldb.tblbarangayid'
    TableName = 'jplaureldb.tblbarangayid'
    Left = 49
    Top = 466
    object tblApprovalID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object tblApprovalBrgyID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BrgyID'
      Origin = 'BrgyID'
      Size = 45
    end
    object tblApprovalDateIssued: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DateIssued'
      Origin = 'DateIssued'
    end
    object tblApprovalIssuedAt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IssuedAt'
      Origin = 'IssuedAt'
      Size = 99
    end
    object tblApprovalAttested: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Attested'
      Origin = 'Attested'
      Size = 99
    end
  end
  object DStblApproval: TDataSource
    DataSet = tblApproval
    Left = 49
    Top = 426
  end
end
