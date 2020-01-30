inherited FLocalizarView: TFLocalizarView
  Caption = 'FLocalizarView'
  ClientHeight = 266
  ClientWidth = 615
  ExplicitWidth = 621
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 613
    Height = 264
    ExplicitWidth = 613
    ExplicitHeight = 264
    inherited Panel2: TPanel
      Width = 611
      Height = 262
      ExplicitWidth = 611
      ExplicitHeight = 262
      inherited PnBotoes: TPanel
        Top = 216
        Width = 611
        ExplicitTop = 216
        ExplicitWidth = 611
        inherited BtEncerrar: TcxButton
          Left = 491
          ExplicitLeft = 491
        end
      end
      inherited Panel3: TPanel
        Width = 611
        Height = 43
        ExplicitWidth = 611
        ExplicitHeight = 43
        inherited PnIconeTitulo: TPanel
          Height = 43
          ExplicitHeight = 43
          inherited ImIconeTitulo: TImage
            Height = 43
            ExplicitHeight = 43
          end
        end
        inherited PnTituloJanela: TPanel
          Height = 43
          ExplicitHeight = 43
          inherited cxLabel1: TcxLabel
            Top = 3
            Margins.Top = 3
            Margins.Bottom = 3
            Caption = 'LocalizarBase'
            Style.IsFontAssigned = True
            ExplicitTop = 3
            ExplicitWidth = 327
          end
        end
        object PnPesquisa: TPanel
          AlignWithMargins = True
          Left = 336
          Top = 8
          Width = 272
          Height = 27
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alRight
          BevelOuter = bvNone
          Color = 15658986
          ParentBackground = False
          TabOrder = 2
          object ImPesquisa: TImage
            Left = 235
            Top = 0
            Width = 37
            Height = 27
            Align = alRight
            Center = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
              0000001008060000001FF3FF610000001974455874536F667477617265004164
              6F626520496D616765526561647971C9653C0000000B744558745469746C6500
              5A6F6F6D3BCF09FEBC0000008D49444154785EB592CB0D83301005433BEE251D
              B8082A6093D4E02E2C38530E17BB8DCD137A5CACC5D2CAE230A7D11BC99F97AA
              0E718AF76FB798400419549241A4BB0F70FC016A4137F502918302040422A0D0
              C55E2033208613BADC0B540682E1025D1D0E3C7A841528715FE2728D7DCF688F
              37CF476AC75F464DDA40B2C69EC0D18EBD81999144E90A0CF1073A60247E2F79
              1EBF0000000049454E44AE426082}
            ExplicitHeight = 30
          end
          object TePesquisa: TcxTextEdit
            Left = 48
            Top = 0
            Align = alClient
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.BorderColor = 14537936
            Style.BorderStyle = ebsNone
            Style.Color = 15658986
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            ExplicitLeft = 127
            ExplicitHeight = 16
            Width = 187
          end
          object cxLabel2: TcxLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Align = alLeft
            Caption = 'Buscar:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans SemiBold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
        end
      end
      inherited Panel4: TPanel
        Top = 44
        Width = 609
        Height = 171
        ExplicitTop = 44
        ExplicitWidth = 609
        ExplicitHeight = 171
        inherited Panel5: TPanel
          Width = 607
          Height = 169
          ExplicitWidth = 607
          ExplicitHeight = 169
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 605
            Height = 167
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            BevelOuter = bvNone
            Color = 14537936
            ParentBackground = False
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 2
            ExplicitWidth = 418
            ExplicitHeight = 133
            object Panel7: TPanel
              AlignWithMargins = True
              Left = 1
              Top = 1
              Width = 603
              Height = 165
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alClient
              BevelOuter = bvNone
              Color = 15658986
              ParentBackground = False
              TabOrder = 0
              ExplicitTop = 45
              ExplicitWidth = 416
              ExplicitHeight = 87
              object DbDados: TcxGrid
                Left = 0
                Top = 0
                Width = 603
                Height = 165
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
                TabOrder = 0
                LookAndFeel.Kind = lfStandard
                LookAndFeel.NativeStyle = False
                ExplicitWidth = 416
                ExplicitHeight = 87
                object VwDados: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
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
                end
                object LvDados: TcxGridLevel
                  GridView = VwDados
                end
              end
            end
          end
        end
      end
    end
  end
  object FdDados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 88
  end
  object DsDados: TDataSource
    Left = 249
    Top = 99
  end
end
