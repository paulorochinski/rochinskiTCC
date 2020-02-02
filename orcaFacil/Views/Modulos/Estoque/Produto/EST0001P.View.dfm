inherited FEST0001PView: TFEST0001PView
  Caption = 'Produtos'
  ClientHeight = 273
  ClientWidth = 600
  ExplicitWidth = 606
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 598
    Height = 271
    ExplicitWidth = 598
    ExplicitHeight = 271
    inherited Panel2: TPanel
      Width = 596
      Height = 269
      ExplicitWidth = 596
      ExplicitHeight = 269
      inherited PnBotoes: TPanel
        Top = 223
        Width = 596
        ExplicitTop = 223
        ExplicitWidth = 596
        inherited BtEncerrar: TcxButton
          Left = 476
          ExplicitLeft = 476
        end
      end
      inherited Panel3: TPanel
        Width = 596
        ExplicitWidth = 596
        inherited PnIconeTitulo: TPanel
          inherited ImIconeTitulo: TImage
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF400000012744558745469746C6500426172436F
              64653B436F646560203F81000003AF49444154785EC557BB52154D10EE59B690
              F27934C60431014DD04434A04A7D0F63435FC00C8448CF39890906BE80F17FA9
              F20D48CE757B9CBECFB2851450E5591866A6A72FDF7CDDB3B3A49C33ACF36960
              CD4F1A8CFF6ECB14B4DFF4B909B05BDA20B596D27032F9F9AD69361E4939E43E
              449F661E873C5FB1CE23E0DF6CF2A16CD575E747070F770840BAB8983D3A7AFE
              E0F63C5E2B1CB68F9F7E6CD3E6990154E8F325D6D6314C91B19CF2150142351B
              3529719F521299B2B0B5D902C5340090B13421CBBD24190E684E462BA40856E3
              154359CFA42720025C626B44364A9C023404180ED564B0B7CC1D3B894DD6AA4C
              A2AEDBC831060B88E8EF8194058DD3B4F7E22DECECBFE2D9EEB3D7F0CF7FBFCA
              FC90D7F70EDEC1CEDE21077D226BDCFF5BFAC7222FF66F60B7E893AFDDA745E7
              FFB2B6FF9268E796C101A4067C428BC00D6A389A43A0DEF783D0505E99023B11
              3C178F34371920A9442D885B4F0133A0A884621A637D643400C9738C91E7A6C7
              84877D469D03FB42F351C7E801407714C5A84E32A2CB78243A43193791A303AC
              C08BCC19EEB4065A03908525ED11D0C7590B4E43A2360896D09840A4B9E9840D
              2BA1E8844D9C825C2F42180F1B659F82B0BEF61517BE036790C7AA169BA96B40
              E810B1D782E548C63E574B03133DC9101CA86EA83E6E5A17E07AD85D55846E84
              1A940252A94731455EB166876D228568FAA11704F17A00E850294AAA845EF5E8
              F944B222705E50D07945EBEE7C03CA0AB3E1390FB0E227DE8466188556175F7F
              9746B13BED531FEC4461C7E9B9A208D1F22A4276C43248E1288E65C844A26B2A
              53FBB820D08461110C40136FA530A9F38CD851BE3C7FF3D90CC08295B57A5B56
              EE8BF9CC640198F592F9F1228C14E80A8643EEC65F4FA06D00265F8E39F07874
              5CE65294E32F27B0B1910CA033331A7D86B6C8CD1564673052D7BF0DAD508487
              F97C0AA9AA8165A7642E85A3658E6B7B49851845E740962B5140C40088A02783
              40F719880204E09DB56DA3C8ED22B681DDBFD18FBE9E15FD04E3C9A9D9C8930A
              4BE3D3C2460393F159EF18E74111065D7C7F2D56F4D7CE7F929B4C155236A851
              39AB95F40B0EA35851595AE9A941BF61EBDBD072220BEC1D0697138DE30845E8
              FE1B5164C142B29DD660FD26F5CB28739E20C3FDADD6E88BE66CFFF94B339663
              5E7F2A096D89FABA0690002C17B3E9F9FB0FE36DA83FA3222A647714F2CC53D3
              867E5A38562097470283DA2D17D3EF94319A6E96B655DA3DFB44BBEE9F8DBBAD
              33CAAEB47969531236DE6EFEA43BFC2B81D4923B5ACF931BAEE0F53DF01B561D
              2DE87CFF0B760000000049454E44AE426082}
          end
        end
        inherited PnTituloJanela: TPanel
          Width = 525
          ExplicitWidth = 525
          inherited cxLabel1: TcxLabel
            Caption = 'PRODUTOS'
            Style.IsFontAssigned = True
            ExplicitWidth = 519
          end
          inherited cxLabel3: TcxLabel
            Caption = 
              'F5 - INCLUIR,  F6 - ALTERAR,   F7 - CONSULTAR,  F8 - EXCLUIR,  F' +
              '9 - DUPLICAR, F10 - IMPORTAR'
            Style.IsFontAssigned = True
            ExplicitWidth = 519
          end
        end
      end
      inherited Panel4: TPanel
        Width = 594
        Height = 169
        ExplicitWidth = 594
        ExplicitHeight = 169
        inherited Panel5: TPanel
          Width = 592
          Height = 123
          ExplicitWidth = 592
          ExplicitHeight = 123
          inherited DbDados: TcxGrid
            Width = 592
            Height = 123
            ExplicitWidth = 592
            ExplicitHeight = 123
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
                Width = 220
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
              object VwDadosPRMEDIO: TcxGridDBColumn
                Caption = 'Pre'#231'o M'#233'dio'
                DataBinding.FieldName = 'PRMEDIO'
              end
              object VwDadosPRMEDIO_SINAPI: TcxGridDBColumn
                Caption = 'Pre'#231'o M'#233'dio SINAPI'
                DataBinding.FieldName = 'PRMEDIO_SINAPI'
                Width = 85
              end
            end
          end
        end
        inherited PnCrud: TPanel
          Width = 594
          ExplicitWidth = 594
          inherited PnPesquisa: TPanel
            Left = 271
            Top = 9
            Width = 320
            Height = 26
            Margins.Top = 9
            Margins.Bottom = 9
            ExplicitLeft = 271
            ExplicitTop = 9
            ExplicitWidth = 320
            ExplicitHeight = 26
            inherited ImPesquisa: TImage
              Left = 283
              Height = 26
              ExplicitLeft = 283
              ExplicitHeight = 28
            end
            inherited TePesquisa: TcxTextEdit
              Style.IsFontAssigned = True
              ExplicitWidth = 235
              ExplicitHeight = 26
              Width = 235
            end
            inherited cxLabel2: TcxLabel
              Style.IsFontAssigned = True
              ExplicitHeight = 20
            end
          end
          object BtImportar: TcxButton
            AlignWithMargins = True
            Left = 220
            Top = 1
            Width = 44
            Height = 42
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
    object FdDadosCODIGO_SINAPI: TStringField
      FieldName = 'CODIGO_SINAPI'
      Size = 22
    end
    object FdDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 190
    end
    object FdDadosUNIDMEDIDA: TStringField
      FieldName = 'UNIDMEDIDA'
      Size = 10
    end
    object FdDadosPRMEDIO: TCurrencyField
      FieldName = 'PRMEDIO'
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
