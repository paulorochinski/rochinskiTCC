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
        inherited PnIconeTitulo: TPanel
          inherited ImIconeTitulo: TImage
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000001974455874536F667477617265004164
              6F626520496D616765526561647971C9653C00000015744558745469746C6500
              446F776E6C6F61643B4172726F773BEC8F1AD0000000B949444154785EEDD331
              0EC2300C85E18E88BB6503C4C8CA3550CEC38CC4D5488D070F564DB0FA64C98B
              877FE990F7455516224A0D0214A000EDF1A26DF23D0750006991D2000580CE9A
              0D3435F0E40E7B008C39726F856B7B015BC4E0AEFF000A77E23E7A9CC37E8146
              C8A137E7199E056B6E8E027E21EE0AA0BB383787003304D9EC380EF011C31B8F
              0758C4AA00663C186011CE780CA0F72E0053C3C66DB3611280FF44FDA726E7E1
              00A02000970788CC03A456800214E00B87DB40073BCDC3180000000049454E44
              AE426082}
          end
        end
      end
      inherited Panel4: TPanel
        Width = 804
        Height = 280
        ExplicitTop = 33
        ExplicitWidth = 804
        ExplicitHeight = 280
        inherited Panel5: TPanel
          Width = 802
          Height = 278
          ExplicitWidth = 802
          ExplicitHeight = 278
          inherited PbProgresso: TProgressBar
            Top = 261
            Width = 802
            Visible = False
            ExplicitTop = 261
            ExplicitWidth = 802
          end
          inherited DbDados: TcxGrid
            Width = 802
            Height = 261
            ExplicitWidth = 802
            ExplicitHeight = 261
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
