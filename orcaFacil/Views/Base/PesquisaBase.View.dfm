inherited FPesquisaView: TFPesquisaView
  Caption = 'FPesquisaView'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnBotoes: TPanel
    inherited SbEncerrar: TcxButton
      ExplicitLeft = 313
      ExplicitTop = 3
      ExplicitHeight = 35
    end
  end
  inherited PnDivisor: TPanel
    ExplicitTop = 179
  end
  inherited PnContainer: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 428
    ExplicitHeight = 179
    object PnPesquisa: TPanel
      Left = 0
      Top = 0
      Width = 428
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object LbPesquisa: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 1
        Width = 424
        Height = 15
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alTop
        Caption = 'Pesquisar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 1
        ExplicitWidth = 54
      end
      object PnDivisorPesquisa: TPanel
        Left = 0
        Top = 41
        Width = 428
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = 10526880
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 43
      end
      object TxPesquisa: TcxTextEdit
        AlignWithMargins = True
        Left = 1
        Top = 18
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alTop
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        ExplicitLeft = 0
        Width = 426
      end
    end
    object GdDados: TcxGrid
      Left = 0
      Top = 42
      Width = 428
      Height = 137
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      ExplicitLeft = -1
      ExplicitTop = 69
      ExplicitWidth = 426
      ExplicitHeight = 133
      object VwDados: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir>'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Header = StHeader
      end
      object LvDados: TcxGridLevel
        GridView = VwDados
      end
    end
  end
  object StGrid: TcxStyleRepository
    Left = 72
    Top = 104
    PixelsPerInch = 96
    object StHeader: TcxStyle
      AssignedValues = [svColor]
      Color = 16448507
    end
  end
end
