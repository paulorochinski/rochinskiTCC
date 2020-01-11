inherited FEST0001PView: TFEST0001PView
  Caption = 'Produtos'
  ClientHeight = 347
  ClientWidth = 723
  ExplicitWidth = 729
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnBotoes: TPanel
    Top = 306
    Width = 723
    ExplicitTop = 306
    ExplicitWidth = 723
    inherited SbEncerrar: TcxButton
      Left = 609
      ExplicitLeft = 609
    end
  end
  inherited PnDivisor: TPanel
    Top = 305
    Width = 723
    ExplicitTop = 305
    ExplicitWidth = 723
  end
  inherited PnContainer: TPanel
    Width = 723
    Height = 305
    ExplicitWidth = 723
    ExplicitHeight = 305
    inherited PnPesquisa: TPanel
      Width = 723
      ExplicitWidth = 723
      inherited LbPesquisa: TLabel
        Width = 719
      end
      inherited PnDivisorPesquisa: TPanel
        Width = 723
        ExplicitWidth = 723
      end
      inherited TxPesquisa: TcxTextEdit
        Style.IsFontAssigned = True
        ExplicitWidth = 721
        ExplicitHeight = 23
        Width = 721
      end
    end
    inherited PnGrid: TPanel
      Width = 721
      Height = 261
      ExplicitWidth = 721
      ExplicitHeight = 261
      inherited GdDados: TcxGrid
        Width = 717
        Height = 257
        ExplicitWidth = 717
        ExplicitHeight = 257
        inherited VwDados: TcxGridDBTableView
          DataController.DataSource = DsDados
          object VwDadosIDPRODUTO: TcxGridDBColumn
            DataBinding.FieldName = 'IDPRODUTO'
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
    object FdDadosIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
  end
  inherited DsDados: TDataSource
    DataSet = FdDados
  end
end
