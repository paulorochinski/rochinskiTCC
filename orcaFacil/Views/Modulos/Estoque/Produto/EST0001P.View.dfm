inherited FEST0001PView: TFEST0001PView
  Caption = 'Produtos'
  ClientHeight = 359
  ClientWidth = 818
  ExplicitWidth = 824
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 816
    Height = 357
    ExplicitWidth = 816
    ExplicitHeight = 357
    inherited Panel2: TPanel
      Width = 814
      Height = 355
      ExplicitWidth = 814
      ExplicitHeight = 355
      inherited PnBotoes: TPanel
        Top = 309
        Width = 814
        ExplicitTop = 309
        ExplicitWidth = 814
        inherited BtEncerrar: TcxButton
          Left = 694
          ExplicitLeft = 694
        end
        inherited BtAlterar: TcxButton
          ExplicitTop = 1
        end
        object BtImportar: TcxButton
          AlignWithMargins = True
          Left = 220
          Top = 1
          Width = 44
          Height = 44
          Hint = 'F10 - Importar'
          Margins.Left = 0
          Margins.Top = 1
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alLeft
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000015744558745469746C6500446F776E6C6F61643B417272
            6F773BEC8F1AD0000000B949444154785EEDD3310EC2300C85E18E88BB6503C4
            C8CA3550CEC38CC4D5488D070F564DB0FA64C98B877FE990F7455516224A0D02
            14A000EDF1A26DF23D0750006991D2000580CE9A0D3435F0E40E7B008C39726F
            856B7B015BC4E0AEFF000A77E23E7A9CC37E8146C8A137E7199E056B6E8E027E
            21EE0AA0BB383787003304D9EC380EF011C31B8F0758C4AA00663C186011CE78
            0CA0F72E0053C3C66DB3611280FF44FDA726E7E100A02000970788CC03A45680
            0214E00B87DB40073BCDC3180000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
          OnClick = BtImportarClick
        end
      end
      inherited Panel3: TPanel
        Width = 814
        ExplicitWidth = 814
        inherited cxLabel1: TcxLabel
          Caption = 'PRODUTOS'
          Style.IsFontAssigned = True
          ExplicitWidth = 109
        end
        inherited PnPesquisa: TPanel
          Left = 582
          ExplicitLeft = 582
          inherited TePesquisa: TcxTextEdit
            Style.IsFontAssigned = True
            ExplicitHeight = 26
          end
        end
      end
      inherited Panel4: TPanel
        Width = 812
        Height = 277
        ExplicitWidth = 812
        ExplicitHeight = 277
        inherited Panel5: TPanel
          Width = 810
          Height = 275
          ExplicitWidth = 810
          ExplicitHeight = 275
          inherited DbDados: TcxGrid
            Width = 810
            Height = 275
            ExplicitWidth = 810
            ExplicitHeight = 275
            inherited VwDados: TcxGridDBTableView
              DataController.DataSource = DsDados
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
              Styles.Indicator = StHeader
              object VwDadosIDPRODUTO: TcxGridDBColumn
                Caption = 'N'#186
                DataBinding.FieldName = 'IDPRODUTO'
                HeaderAlignmentHorz = taCenter
                Width = 40
              end
              object VwDadosCODIGO_SINAPI: TcxGridDBColumn
                Caption = 'C'#243'digo SINAPI'
                DataBinding.FieldName = 'CODIGO_SINAPI'
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
              object VwDadosDESCRICAO: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DESCRICAO'
                Width = 250
              end
              object VwDadosUNIDMEDIDA: TcxGridDBColumn
                Caption = 'Unid. Medida'
                DataBinding.FieldName = 'UNIDMEDIDA'
                Width = 55
              end
              object VwDadosORIGEM_PRECO: TcxGridDBColumn
                Caption = 'Origem Pre'#231'o'
                DataBinding.FieldName = 'ORIGEM_PRECO'
                Width = 70
              end
              object VwDadosPRMEDIO_SINAPI: TcxGridDBColumn
                Caption = 'Pre'#231'o M'#233'dio SINAPI'
                DataBinding.FieldName = 'PRMEDIO_SINAPI'
                Width = 85
              end
            end
          end
        end
      end
    end
  end
  inherited StGrid: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited FdDados: TFDMemTable
    StoreDefs = True
    object FdDadosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 64
    end
    object FdDadosIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
    object FdDadosCODIGO_SINAPI: TIntegerField
      FieldName = 'CODIGO_SINAPI'
    end
    object FdDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 190
    end
    object FdDadosUNIDMEDIDA: TStringField
      FieldName = 'UNIDMEDIDA'
      Size = 10
    end
    object FdDadosPRMEDIO_SINAPI: TCurrencyField
      FieldName = 'PRMEDIO_SINAPI'
    end
    object FdDadosORIGEM_PRECO: TStringField
      FieldName = 'ORIGEM_PRECO'
      Size = 10
    end
  end
  inherited DsDados: TDataSource
    AutoEdit = False
    DataSet = FdDados
    Left = 233
    Top = 107
  end
end
