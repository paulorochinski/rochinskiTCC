inherited FEST0001PView: TFEST0001PView
  Caption = 'Produtos'
  ClientHeight = 347
  ClientWidth = 723
  ExplicitWidth = 729
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 721
    Height = 345
    ExplicitWidth = 721
    ExplicitHeight = 345
    inherited Panel2: TPanel
      Width = 719
      Height = 343
      ExplicitWidth = 719
      ExplicitHeight = 343
      inherited PnBotoes: TPanel
        Top = 297
        Width = 719
        ExplicitTop = 297
        ExplicitWidth = 719
        inherited BtEncerrar: TcxButton
          Left = 599
          ExplicitLeft = 599
        end
        inherited BtAlterar: TcxButton
          ExplicitTop = 1
        end
      end
      inherited Panel3: TPanel
        Width = 719
        ExplicitWidth = 719
        inherited cxLabel1: TcxLabel
          Caption = 'PRODUTOS'
          Style.IsFontAssigned = True
          ExplicitWidth = 109
        end
        inherited PnPesquisa: TPanel
          Left = 487
          ExplicitLeft = 487
          inherited TePesquisa: TcxTextEdit
            Style.IsFontAssigned = True
            ExplicitHeight = 26
          end
        end
      end
      inherited Panel4: TPanel
        Width = 717
        Height = 265
        ExplicitWidth = 717
        ExplicitHeight = 265
        inherited Panel5: TPanel
          Width = 715
          Height = 263
          ExplicitWidth = 715
          ExplicitHeight = 263
          inherited DbDados: TcxGrid
            Width = 715
            Height = 263
            ExplicitWidth = 715
            ExplicitHeight = 263
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
  end
  inherited DsDados: TDataSource
    AutoEdit = False
    DataSet = FdDados
    Left = 233
    Top = 107
  end
end
