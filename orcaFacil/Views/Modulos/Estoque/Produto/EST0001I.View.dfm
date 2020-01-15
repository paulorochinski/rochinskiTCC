inherited FEST0001IView: TFEST0001IView
  Caption = 'Importar Produtos SINAPI'
  ClientHeight = 364
  ClientWidth = 810
  Visible = False
  ExplicitWidth = 816
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 808
    Height = 362
    ExplicitWidth = 808
    ExplicitHeight = 362
    inherited Panel2: TPanel
      Width = 806
      Height = 360
      ExplicitWidth = 806
      ExplicitHeight = 360
      inherited PnBotoes: TPanel
        Top = 314
        Width = 806
        ExplicitTop = 314
        ExplicitWidth = 806
        inherited BtEncerrar: TcxButton
          Left = 686
          ExplicitLeft = 686
        end
        inherited BtSalvar: TcxButton
          Left = 566
          Enabled = False
          ExplicitLeft = 566
        end
        inherited BtBuscar: TcxButton
          OnClick = BtBuscarClick
        end
      end
      inherited Panel3: TPanel
        Width = 806
        ExplicitWidth = 806
        inherited cxLabel1: TcxLabel
          Caption = 'IMPORTAR PRODUTOS'
          Style.IsFontAssigned = True
          ExplicitWidth = 217
        end
      end
      inherited Panel4: TPanel
        Width = 804
        Height = 282
        ExplicitWidth = 804
        ExplicitHeight = 282
        inherited Panel5: TPanel
          Width = 802
          Height = 280
          ExplicitWidth = 802
          ExplicitHeight = 280
          inherited PbProgresso: TProgressBar
            Top = 263
            Width = 802
            Visible = False
            ExplicitTop = 263
            ExplicitWidth = 802
          end
          inherited DbDados: TcxGrid
            Width = 802
            Height = 263
            ExplicitWidth = 802
            ExplicitHeight = 263
            inherited VwDados: TcxGridDBTableView
              DataController.DataSource = DsDados
              object VwDadosCODIGO: TcxGridDBColumn
                Caption = 'C'#243'digo SINAPI'
                DataBinding.FieldName = 'CODIGO'
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object VwDadosDESCRICAO: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DESCRICAO'
                Width = 500
              end
              object VwDadosUNIDMEDIDA: TcxGridDBColumn
                Caption = 'Unid. Medida'
                DataBinding.FieldName = 'UNIDMEDIDA'
              end
              object VwDadosPRORIGEM: TcxGridDBColumn
                Caption = 'Origem Pre'#231'o'
                DataBinding.FieldName = 'PRORIGEM'
                Width = 110
              end
              object VwDadosPRMEDIOSINAPI: TcxGridDBColumn
                Caption = 'Pre'#231'o M'#233'dio SINAPI'
                DataBinding.FieldName = 'PRMEDIOSINAPI'
                Width = 160
              end
            end
          end
        end
      end
    end
  end
  inherited OpPlanilha: TOpenDialog
    Filter = 'Excel|*.csv'
  end
  inherited StGrid: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited CdDados: TClientDataSet
    PersistDataPacket.Data = {
      AD0000009619E0BD010000001800000005000000000003000000AD0006434F44
      49474F04000100000000000944455343524943414F0200490000000100055749
      4454480200020026020A554E49444D4544494441010049000000010005574944
      54480200020019000850524F524947454D010049000000010005574944544802
      00020019000D50524D4544494F53494E41504908000400000001000753554254
      5950450200490006004D6F6E6579000000}
    Active = True
    object CdDadosCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
    end
    object CdDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 550
    end
    object CdDadosUNIDMEDIDA: TStringField
      FieldName = 'UNIDMEDIDA'
      Size = 25
    end
    object CdDadosPRORIGEM: TStringField
      FieldName = 'PRORIGEM'
      Size = 25
    end
    object CdDadosPRMEDIOSINAPI: TCurrencyField
      FieldName = 'PRMEDIOSINAPI'
    end
  end
end
