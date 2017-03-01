object frmLogViewer: TfrmLogViewer
  Left = 0
  Top = 0
  Caption = #22823#26085#24535#27983#35272#22120
  ClientHeight = 654
  ClientWidth = 1067
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 17
  object Splitter1: TSplitter
    Left = 0
    Top = 539
    Width = 1067
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = 1064
    ExplicitTop = 37
    ExplicitWidth = 448
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1067
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 68
      Height = 37
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = #26085#24535#25991#20214':'
      Layout = tlCenter
      ExplicitHeight = 41
    end
    object edtLogFile: TEdit
      AlignWithMargins = True
      Left = 71
      Top = 8
      Width = 912
      Height = 21
      Margins.Top = 8
      Margins.Bottom = 8
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 25
    end
    object btnBrowseLog: TButton
      AlignWithMargins = True
      Left = 989
      Top = 5
      Width = 75
      Height = 27
      Margins.Top = 5
      Margins.Bottom = 5
      Action = actOpenLog
      Align = alRight
      TabOrder = 1
    end
  end
  object vstLogs: TVirtualStringTree
    Left = 0
    Top = 37
    Width = 1035
    Height = 502
    Align = alClient
    Header.AutoSizeIndex = 1
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
    TabOrder = 1
    TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowTreeLines, toThemeAware, toUseBlendedImages]
    TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect]
    OnFocusChanged = vstLogsFocusChanged
    OnGetText = vstLogsGetText
    Columns = <
      item
        Position = 0
        Width = 85
        WideText = '#'
      end
      item
        CaptionAlignment = taCenter
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAutoSpring, coSmartResize, coAllowFocus, coUseCaptionAlignment, coEditable]
        Position = 1
        Width = 946
        WideText = #20869#23481
      end>
  end
  object pnlButtons: TPanel
    Left = 1035
    Top = 37
    Width = 32
    Height = 502
    Align = alRight
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object sbAbout: TSpeedButton
      Left = 3
      Top = 129
      Width = 23
      Height = 22
      Hint = #20851#20110#36719#20214
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FDBC90E9924BDC7A
        23D47A23D4924BDCBC90E9F7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCDACEF8A3DD9CDADEFF7F1FDFFFFFFFFFFFFF7F1FDCDADEF8A3DD9D5BA
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDACEF924BDCF7F1FDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7F1FD934CDCD5BAF2FFFFFFFFFFFFFFFFFFF7F1FD
        8A3DD9F7F1FDFFFFFFFFFFFFEEE3FA7A23D47A23D4EEE3FAFFFFFFFFFFFFF7F1
        FD8A3DD9F7F1FDFFFFFFFFFFFFBC90E9CDACEFFFFFFFFFFFFFFFFFFFFFFFFFBC
        90E9BC90E9FFFFFFFFFFFFFFFFFFFFFFFFC49EECBC90E9FFFFFFFFFFFF924BDC
        F7F1FDFFFFFFFFFFFFFFFFFFFFFFFFBC90E9BC90E9FFFFFFFFFFFFFFFFFFFFFF
        FFEEE3FA924BDCFFFFFFFFFFFF7A23D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC
        90E9BC90E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A23D4FFFFFFFFFFFF7A23D4
        FFFFFFFFFFFFFFFFFFFFFFFFEEE3FA9A59DEBC90E9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF7A23D4FFFFFFFFFFFF924BDCF7F1FDFFFFFFFFFFFFFFFFFFF7F1FDDE
        C8F5F7F1FDFFFFFFFFFFFFFFFFFFFFFFFFF7F1FD924BDCFFFFFFFFFFFFBC90E9
        CDACEFFFFFFFFFFFFFFFFFFFFFFFFFBC90E9BC90E9FFFFFFFFFFFFFFFFFFFFFF
        FFC49EECBC90E9FFFFFFFFFFFFF7F1FD8A3DD9F7F1FDFFFFFFFFFFFFFFFFFFAB
        75E4AB75E4FFFFFFFFFFFFFFFFFFF7F1FD8A3DD9F7F1FDFFFFFFFFFFFFFFFFFF
        CDACEF924BDCF7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FD924B
        DCCDACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDACEF8A3DD9CDACEFF7F1FDFF
        FFFFFFFFFFF7F1FDCDACEF8A3DD9CDACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF7F1FDB483E7934CDC7A23D47A23D4934CDCBD91EAF7F1FDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbAboutClick
    end
    object sbCharset: TSpeedButton
      Left = 3
      Top = 35
      Width = 23
      Height = 22
      Hint = #35774#32622#25171#24320#26085#24535#20351#29992#30340#23383#31526#32534#30721
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FDC49EEC9A59DE9A
        59DE9B5ADF9A59DEC49EECF7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD5BAF2924BDCD6BAF2FFFFFFFFFFFFFFFFFFFFFFFFD5BAF2924BDCD5BA
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BAF2AB75E4F7F1FDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7F1FDAC75E4D5BAF2FFFFFFFFFFFFFFFFFFF7F1FD
        924BDCF7F1FDFFFFFFFFFFFFFFFFFFCDACEFE6D5F7FFFFFFFFFFFFFFFFFFF7F1
        FD924BDCF7F1FDFFFFFFFFFFFFC49EECD5BAF2FFFFFFFFFFFFFFFFFFFFFFFFBC
        90E9DDC7F4FFFFFFFFFFFFFFFFFFFFFFFFD5BAF2C49EECFFFFFFFFFFFF9A59DE
        FFFFFFFFFFFFF7F1FDDDC7F4DDC7F4AB75E4C49EECDDC7F4DDC7F4F7F1FDFFFF
        FFFFFFFF9A59DEFFFFFFFFFFFF9A59DEFFFFFFFFFFFFBC90E9AC75E4BD91EA9B
        5ADFAC75E4BD91EAAC75E4BC90E9FFFFFFFFFFFF9A59DEFFFFFFFFFFFF9A59DE
        FFFFFFFFFFFFBC90E9DDC7F4FFFFFFBC90E9DDC7F4FFFFFFDDC7F4BC90E9FFFF
        FFFFFFFF9A59DEFFFFFFFFFFFF924BDCFFFFFFFFFFFFBC90E9AB75E4BC90E99A
        59DEAB75E4BC90E9AB75E4BC90E9FFFFFFFFFFFF9A59DEFFFFFFFFFFFFC49EEC
        D5BAF2FFFFFFF7F1FDDEC8F5DEC8F5AC75E4C59FECDEC8F5DEC8F5F7F1FDFFFF
        FFD5BAF2C49EECFFFFFFFFFFFFF7F1FD924BDCF7F1FDFFFFFFFFFFFFFFFFFFCD
        ACEFE6D5F7FFFFFFFFFFFFFFFFFFF7F1FD924BDCF7F1FDFFFFFFFFFFFFFFFFFF
        D5BAF2AB75E4F7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FDAB75
        E4D5BAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BAF2924BDCD5BAF2FFFFFFFF
        FFFFFFFFFFFFFFFFD5BAF2924BDCD5BAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF7F1FDC59FEC9B5ADF9A59DE9A59DE9A59DEC59FECF7F1FDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbCharsetClick
    end
    object sbExtract: TSpeedButton
      Left = 3
      Top = 68
      Width = 23
      Height = 22
      Hint = #20351#29992#27491#21017#34920#36798#24335#25277#21462#26085#24535#20869#23481
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCDACEF9A59DE9A59DE9A59DE9A59DE9A59DEBC
        90E9FFFFFFCDACEFA367E1CDACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A59DE
        8230D69B5ADF9B5ADF9B5ADF8230D69A59DEFFFFFFCDACEF8230D67A23D4A367
        E1FFFFFFFFFFFFFFFFFFFFFFFF9A59DE9A59DEFFFFFFFFFFFFFFFFFF9A59DE9A
        59DEFFFFFFFFFFFFFFFFFFBC90E97A23D4CDACEFFFFFFFFFFFFFFFFFFF9A59DE
        9A59DEFFFFFFFFFFFFFFFFFF9A59DE9A59DEFFFFFFFFFFFFFFFFFFFFFFFF924B
        DCA367E1FFFFFFFFFFFFFFFFFF9A59DE924BDCDDC7F4DDC7F4DDC7F4924BDC9A
        59DEFFFFFFFFFFFFFFFFFFCDACEF812FD6812FD6B482E7FFFFFFFFFFFFA367E1
        7A23D47A23D47A23D47A23D47A23D49A59DEFFFFFFFFFFFFFFFFFFFFFFFF9A59
        DE8A3ED9F7F1FDFFFFFFFFFFFFF7F1FDDEC8F5DEC8F5DEC8F5DEC8F5DEC8F5F7
        F1FDFFFFFFFFFFFFFFFFFFFFFFFFF7F1FDE6D5F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F1FDFFFFFFFFFFFFFFFFFFFFFFFFEEE3FADDC7F4DDC7F4DDC7F4DDC7
        F4E6D5F7FFFFFFFFFFFFFFFFFFF7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
        E3FA7A23D47A23D47A23D47A23D47A23D47A23D4DDC7F4FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDC7F47A23D4C59FECDEC8F5DEC8F5D6BA
        F27A23D4DDC7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD
        C7F47A23D4DDC7F4FFFFFFFFFFFFFFFFFF7A23D4DDC7F4FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDC7F47A23D4DDC7F4FFFFFFFFFFFFFFFF
        FF7A23D4DDC7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD
        C7F47A23D4924BDC9A59DE9A59DE924BDC7A23D4DDC7F4FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FDA368E19B5ADF9B5ADF9B5ADF9B5A
        DF9B5ADFEEE3FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbExtractClick
    end
    object sbSearch: TSpeedButton
      Left = 3
      Top = 2
      Width = 23
      Height = 22
      Hint = #25628#32034#26085#24535#20869#23481
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFAB75E4924BDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB75E47A23D4AC75E4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB75
        E47A23D4AC75E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FDDDC7F4BC90E9DD
        C7F4EEE3FAFFFFFFFFFFFFAB75E47A23D4AC75E4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBC90E98A3DD9AC75E4BD91EAB483E78A3ED9AB75E4AB75E47A23D4AC75
        E4FFFFFFFFFFFFFFFFFFFFFFFFF7F1FD924BDCB483E7F7F1FDFFFFFFFFFFFFFF
        FFFFFFFFFFC49EEC7A23D4A368E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB482E7
        B482E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDACEF9A59DEFFFF
        FFFFFFFFFFFFFFFFFFFFEEE3FA8A3DD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF9A59DECDACEFFFFFFFFFFFFFFFFFFFC49EECB482E7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BAF2B482
        E7FFFFFFFFFFFFFFFFFFBC90E9C49EECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDDC7F49A59DEFFFFFFFFFFFFFFFFFFBC90E9BC90E9
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDC7F49A59
        DEFFFFFFFFFFFFFFFFFFD5BAF2AB75E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC49EECBC90E9FFFFFFFFFFFFFFFFFFFFFFFF8A3DD9
        E6D5F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FD8A3DD9EEE3
        FAFFFFFFFFFFFFFFFFFFFFFFFFD5BAF2924BDCF7F1FDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFAB75E4BC90E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CDACEF812FD6CDACEFF7F1FDFFFFFFFFFFFFD5BAF2924BDCB483E7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEE3FAAC75E48A3ED97A23D482
        30D6A368E1DDC7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbSearchClick
    end
    object sbLinkLog: TSpeedButton
      Left = 3
      Top = 101
      Width = 23
      Height = 22
      Hint = #24314#31435' .log '#25991#20214#19982#31243#24207#30340#20851#32852
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFDDC7F4C49EECDDC7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE6D5F7924BDC8230D69B5ADF8230D69A59DEF7
        F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF924BDC
        AC75E4FFFFFFFFFFFFF7F1FDA368E1924BDCF7F1FDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDDC7F48230D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB
        75E4924BDCF7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC49EEC9A59DE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB75E4924BDCF7F1FDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDDC7F4812FD6F7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF9A59DEA367E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A59DE
        AB75E4FFFFFFFFFFFFD5BAF2A367E1FFFFFFFFFFFFEEE3FA7A23D4F7F1FDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FD934CDCA367E1FFFFFF812FD6C49EECFF
        FFFFFFFFFFFFFFFF7A23D4DDC7F4BC90E9F7F1FDFFFFFFFFFFFFFFFFFFFFFFFF
        F7F1FDC59FECE6D5F77A23D4FFFFFFFFFFFFFFFFFFDDC7F4812FD6FFFFFF924B
        DC924BDCF7F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FD7A23D4EEE3FAFF
        FFFFDDC7F4812FD6C49EECFFFFFFFFFFFFAB75E49A59DEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA367E1A367E1FFFFFFD5BAF2CDADEFFFFFFFFFFFFFFFFF
        FFF7F1FD8230D6DDC7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FD934CDCAB
        75E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A59DEC49EECFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF7F1FD934CDCAB75E4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF812FD6DDC7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
        F1FD934CDCAB75E4F7F1FDFFFFFFFFFFFFAB75E4934CDCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FD9B5ADF812FD69A59DE812F
        D6934CDCE6D5F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDDC7F4C59FECDEC8F5FFFFFFFFFFFFFFFFFF}
      OnClick = sbLinkLogClick
    end
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 157
      Width = 23
      Height = 22
      Hint = #20851#20110#36719#20214
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000FAE6E6FAE6E6
        FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6E0CFCFE0CFCFFAE6E6FAE6E6FAE6E6FAE6
        E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6E0CFCF78
        7676787676E0CFCFFAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6
        FAE6E6FAE6E6FAE6E6E0CFCF807E7E9A94949A9494807E7EE0CFCFFAE6E6FAE6
        E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6C6B9B9E0CFCFB4
        AAAAB4AAAAE0CFCFC6B9B9FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6
        FAE6E6E8D7D7D7C8C8E8D7D7FAE6E6B4AAAAB4AAAAFAE6E6E8D7D7D7C8C8E8D7
        D7FAE6E6FAE6E6FAE6E6FAE6E6D7C8C88985859B9595B5ABABD7C8C8FAE6E6B4
        AAAAB4AAAAFAE6E6D7C8C8B5ABAB9B9595898585D7C8C8FAE6E6E8D7D7928D8D
        F1DEDEFAE6E6FAE6E6FAE6E6FAE6E6B4AAAAB4AAAAFAE6E6FAE6E6FAE6E6FAE6
        E6F1DEDE928D8DE8D7D7B4AAAACEC0C0FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6B4
        AAAAB4AAAAFAE6E6FAE6E6FAE6E6FAE6E6FAE6E6CEC0C0B4AAAAB4AAAAD7C8C8
        FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6B4AAAAB4AAAAFAE6E6FAE6E6FAE6E6FAE6
        E6FAE6E6D7C8C8B4AAAAC6B9B9B4AAAAFAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FA
        E6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6B4AAAAC6B9B9FAE6E69A9494
        BDB2B2E8D7D7FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6E8D7
        D7BDB2B29A9494FAE6E6FAE6E6FAE6E6BDB2B2928D8DB4AAAAFAE6E6FAE6E6FA
        E6E6FAE6E6FAE6E6FAE6E6B4AAAA928D8DBEB3B3FAE6E6FAE6E6FAE6E6FAE6E6
        FAE6E6F1DEDE898585FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6898585F1DE
        DEFAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6ACA3A3CEC0C0FAE6E6FA
        E6E6FAE6E6FAE6E6C6B9B9ACA3A3FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6
        FAE6E6FAE6E6F1DEDE928D8DA39B9BD7C8C8D7C8C8A39B9B928D8DF1DEDEFAE6
        E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6CEC0C0B5
        ABABB5ABABD7C8C8FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6FAE6E6}
      OnClick = SpeedButton1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 542
    Width = 1067
    Height = 112
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object mmLineText: TMemo
      Left = 0
      Top = 0
      Width = 1067
      Height = 85
      Align = alClient
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
    object pbProgress: TProgressBar
      AlignWithMargins = True
      Left = 8
      Top = 88
      Width = 1051
      Height = 20
      Margins.Left = 8
      Margins.Right = 8
      Margins.Bottom = 4
      Align = alBottom
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      Visible = False
      ExplicitLeft = 10
      ExplicitTop = 91
    end
  end
  object pnlSearch: TPanel
    Left = 645
    Top = 59
    Width = 390
    Height = 168
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 6
      Top = 39
      Width = 63
      Height = 17
      Alignment = taRightJustify
      Caption = #35201#26597#25214#25991#26412':'
      Layout = tlCenter
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 380
      Height = 29
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = #25628#32034
      TabOrder = 0
      object sbCloseSearch: TSpeedButton
        Left = 353
        Top = 0
        Width = 23
        Height = 25
        Align = alRight
        Caption = 'r'
        Flat = True
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Marlett'
        Font.Style = []
        ParentFont = False
        OnClick = sbCloseSearchClick
        ExplicitLeft = 312
        ExplicitTop = 8
        ExplicitHeight = 22
      end
    end
    object edtSearchText: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 57
      Width = 379
      Height = 25
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      TabOrder = 1
    end
    object chkByRegex: TCheckBox
      AlignWithMargins = True
      Left = 6
      Top = 93
      Width = 148
      Height = 19
      Margins.Left = 85
      Caption = #20351#29992#27491#21017#34920#36798#24335
      TabOrder = 2
    end
    object chkIgnoreCase: TCheckBox
      Left = 160
      Top = 93
      Width = 97
      Height = 17
      Caption = #24573#30053#22823#23567#20889
      TabOrder = 3
    end
    object btnBack: TButton
      Left = 120
      Top = 132
      Width = 75
      Height = 25
      Caption = #21521#21069#26597#25214
      TabOrder = 4
      OnClick = btnBackClick
    end
    object btnForward: TButton
      Left = 211
      Top = 132
      Width = 75
      Height = 25
      Caption = #21521#21518#26597#25214
      TabOrder = 5
      OnClick = btnForwardClick
    end
    object btnSearchAll: TButton
      Left = 303
      Top = 131
      Width = 75
      Height = 25
      Caption = #26597#25214#20840#37096
      TabOrder = 6
      OnClick = btnSearchAllClick
    end
  end
  object pnlEncoding: TPanel
    AlignWithMargins = True
    Left = 719
    Top = 233
    Width = 316
    Height = 117
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object rbUTF8Encoding: TRadioButton
      Left = 11
      Top = 63
      Width = 113
      Height = 17
      Caption = 'UTF-8 '#32534#30721
      TabOrder = 0
    end
    object rbUTF16LE: TRadioButton
      Left = 11
      Top = 86
      Width = 113
      Height = 17
      Caption = 'Unicode LE '#32534#30721
      TabOrder = 1
    end
    object RadioButton2: TRadioButton
      Left = 191
      Top = 86
      Width = 113
      Height = 17
      Caption = 'Unicode BE '#32534#30721
      TabOrder = 2
    end
    object tbAnsiEncoding: TRadioButton
      Left = 191
      Top = 63
      Width = 113
      Height = 17
      Caption = 'ANSI '#32534#30721
      TabOrder = 3
    end
    object rbAutoEncoding: TRadioButton
      Left = 11
      Top = 40
      Width = 137
      Height = 17
      Caption = #33258#21160#26816#27979#25991#20214#32534#30721
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 306
      Height = 29
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = #20869#23481#32534#30721
      TabOrder = 5
      object sbCloseEncoding: TSpeedButton
        Left = 279
        Top = 0
        Width = 23
        Height = 25
        Align = alRight
        Caption = 'r'
        Flat = True
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Marlett'
        Font.Style = []
        ParentFont = False
        OnClick = sbCloseEncodingClick
        ExplicitLeft = 312
        ExplicitTop = 8
        ExplicitHeight = 22
      end
    end
  end
  object ActionList1: TActionList
    Left = 736
    object actOpenLog: TFileOpen
      Category = #25991#20214
      Caption = #27983#35272'(&B)...'
      Hint = #25171#24320'|'#25171#24320#19968#20010#26085#24535#25991#20214
      ImageIndex = 7
      ShortCut = 16463
      OnAccept = actOpenLogAccept
    end
  end
end
