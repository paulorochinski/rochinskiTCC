inherited FImportarView: TFImportarView
  Caption = 'ImportarBase'
  ClientHeight = 257
  ClientWidth = 488
  FormStyle = fsNormal
  Position = poScreenCenter
  ExplicitWidth = 494
  ExplicitHeight = 286
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 486
    Height = 255
    ExplicitWidth = 486
    ExplicitHeight = 255
    inherited Panel2: TPanel
      Width = 484
      Height = 253
      ExplicitWidth = 484
      ExplicitHeight = 253
      inherited PnBotoes: TPanel
        Top = 207
        Width = 484
        ExplicitTop = 207
        ExplicitWidth = 484
        inherited BtEncerrar: TcxButton
          Left = 364
          ExplicitLeft = 364
        end
        object BtSalvar: TcxButton
          AlignWithMargins = True
          Left = 244
          Top = 1
          Width = 120
          Height = 44
          Margins.Left = 0
          Margins.Top = 1
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alRight
          Caption = 'C&onfirmar'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D494844520000002000000020080300000044A48A
            C60000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000015744558745469746C6500436865636B3B4D61726B3B54
            69636B0B00C7240000004B504C5445FFFFFFFFFFFFFCFDFD9FC2B6E4EEEBB1CD
            C3E0EBE7FEFFFFA0C2B779A99977A89877A79780AD9E7FAD9EA3C4B97EAC9D76
            A797D4E3DEDFEBE7A2C3B8A6C6BBD5E4DFE3EDE9E3EDEAE2ECE945FDC6340000
            000174524E530040E6D8660000008449444154785ED5D3370E03310C44518FE2
            66E770FF931A368BC11058A9B5D9FE07420575E8CFA9393F0EA60E88656D8218
            F05C15F80E945981EF61D8DD1061DD03DF05CC6E3FBE9D209F47DF05E48AFBA8
            EF1370AB80097601C7074CB00BA0F0DD00C5855D0005BB000A760526D2A75F1B
            07B324848D8980E2B5754E6EFAAF7F41D09D37777D319D27A472A00000000049
            454E44AE426082}
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
          OnClick = BtSalvarClick
        end
        object BtBuscar: TcxButton
          AlignWithMargins = True
          Left = 0
          Top = 1
          Width = 44
          Height = 44
          Hint = 'F5 - Buscar'
          Margins.Left = 0
          Margins.Top = 1
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alLeft
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C65004C6F61643B53656C6563743B
            466F6C6465723B4F70656E96333E780000010A49444154785EEDD2318AC24014
            C6F19C618B3D43C03267B01C54B6DA1BD82DA4101B41C6345E4044BC42C0C25D
            F60062993308D67A037D7E291E3879202171DE145AFC9874DF7FC2444414D46B
            0518FB4F9040D0008E0815E0463C7BA02A8614367000AAF8F219308402E8115F
            0113B88841297106B22C33403519100130BC1B3FC21ABAF0591D178F90076A93
            0131147085157420020E74C67D04A47082D1FD3073C65B0748FD9EFDFB1DD8ED
            14DF1F300702C31BCC5BC0B7CDF3F2E471A61530FE992D17E509142260CFD403
            24FD00033C20F80E30E75D5AA2068C13D0E4863CDE94086871C3F67F407B1CC4
            1B501D1701CAE33240795C06288FCB00E57119A03DCE0141BD03DE0137F82339
            62448045B90000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
        end
      end
      inherited Panel3: TPanel
        Width = 484
        ExplicitWidth = 484
        inherited PnTituloJanela: TPanel
          inherited cxLabel1: TcxLabel
            Caption = 'ImportarBase'
            Style.IsFontAssigned = True
          end
          object LbLegenda: TcxLabel
            AlignWithMargins = True
            Left = 3
            Top = 31
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            Caption = 'F5 - BUSCAR ARQUIVO'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clSilver
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = [fsBold]
            Style.TextColor = clTeal
            Style.IsFontAssigned = True
          end
        end
      end
      inherited Panel4: TPanel
        Width = 482
        Height = 153
        ExplicitWidth = 482
        ExplicitHeight = 153
        inherited Panel5: TPanel
          Width = 480
          Height = 151
          ExplicitWidth = 480
          ExplicitHeight = 151
          object PbProgresso: TProgressBar
            Left = 0
            Top = 134
            Width = 480
            Height = 17
            Align = alBottom
            TabOrder = 0
            Visible = False
          end
          object DbDados: TcxGrid
            Left = 0
            Top = 0
            Width = 480
            Height = 134
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = False
            object VwDados: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.CopyRecordsToClipboard = False
              OptionsBehavior.ColumnHeaderHints = False
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir>'
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Background = StBackground
              Styles.ContentEven = StContentEven
              Styles.ContentOdd = StContentOdd
              Styles.Header = StHeader
              Styles.Inactive = StInactive
              Styles.Indicator = StHeader
              Styles.Selection = StSelection
            end
            object LvDados: TcxGridLevel
              GridView = VwDados
            end
          end
        end
      end
    end
  end
  object OpPlanilha: TOpenDialog
    Filter = 'Excel|*.xlsx|Excel|*.xls'
    Left = 92
    Top = 178
  end
  object DsDados: TDataSource
    DataSet = CdDados
    Left = 228
    Top = 106
  end
  object StGrid: TcxStyleRepository
    Left = 72
    Top = 104
    PixelsPerInch = 96
    object StHeader: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16448507
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans SemiBold'
      Font.Style = [fsBold]
    end
    object StBackground: TcxStyle
      AssignedValues = [svColor]
      Color = 16119285
    end
    object StContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13630446
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = []
    end
    object StContentEven: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = []
    end
    object StSelection: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14935011
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans SemiBold'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object StInactive: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14935011
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans SemiBold'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
  end
  object CdDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 140
    Top = 82
  end
end
