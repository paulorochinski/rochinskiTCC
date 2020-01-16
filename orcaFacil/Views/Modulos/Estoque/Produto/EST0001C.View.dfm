inherited FEST0001CView: TFEST0001CView
  Caption = 'Produtos'
  ClientHeight = 298
  ClientWidth = 584
  Position = poScreenCenter
  ExplicitWidth = 590
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 582
    Height = 296
    ExplicitWidth = 582
    ExplicitHeight = 296
    inherited Panel2: TPanel
      Width = 580
      Height = 294
      ExplicitWidth = 580
      ExplicitHeight = 294
      inherited PnBotoes: TPanel
        Top = 248
        Width = 580
        ExplicitTop = 248
        ExplicitWidth = 580
        inherited BtEncerrar: TcxButton
          Left = 460
          ExplicitLeft = 460
        end
        inherited BtSalvar: TcxButton
          Left = 340
          ExplicitLeft = 340
        end
      end
      inherited Panel3: TPanel
        Width = 580
        ExplicitWidth = 580
        inherited cxLabel1: TcxLabel
          Caption = 'PRODUTOS'
          Style.IsFontAssigned = True
          ExplicitWidth = 109
        end
        inherited LbOperacao: TcxLabel
          Left = 476
          Style.IsFontAssigned = True
          ExplicitLeft = 476
        end
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
      end
      inherited Panel4: TPanel
        Width = 578
        Height = 214
        ExplicitTop = 33
        ExplicitWidth = 578
        ExplicitHeight = 214
        inherited Panel5: TPanel
          Width = 576
          Height = 212
          ExplicitWidth = 576
          ExplicitHeight = 212
          object TeCodigoSinapi: TcxTextEdit
            Left = 91
            Top = 4
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clWindowFrame
            StyleDisabled.Color = 16119539
            StyleDisabled.TextColor = clBlack
            TabOrder = 0
            OnKeyPress = TeCodigoSinapiKeyPress
            Width = 129
          end
          object TeUnidMedida: TcxTextEdit
            Left = 91
            Top = 128
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clWindowFrame
            StyleDisabled.Color = 16119539
            StyleDisabled.TextColor = clBlack
            TabOrder = 2
            Width = 129
          end
          object TePrMedioSinapi: TcxTextEdit
            Left = 91
            Top = 157
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clWindowFrame
            StyleDisabled.Color = 16119539
            StyleDisabled.TextColor = clBlack
            TabOrder = 5
            Width = 129
          end
          object cxLabel2: TcxLabel
            Left = 1
            Top = 7
            Caption = 'C'#211'DIGO SINAPI:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Open Sans SemiBold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel3: TcxLabel
            Left = 1
            Top = 36
            Caption = 'DESCRI'#199#195'O:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Open Sans SemiBold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel4: TcxLabel
            Left = 1
            Top = 131
            Caption = 'UNID. MEDIDA:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Open Sans SemiBold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel5: TcxLabel
            Left = 1
            Top = 160
            Caption = 'PR. M'#201'DIO SINAPI:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Open Sans SemiBold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel6: TcxLabel
            Left = 402
            Top = 7
            Caption = 'N'#186':'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Open Sans SemiBold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object TeIdProduto: TcxTextEdit
            Left = 424
            Top = 4
            Enabled = False
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clWindowFrame
            StyleDisabled.Color = 16119539
            StyleDisabled.TextColor = clBlack
            TabOrder = 10
            Width = 129
          end
          object TeOrigemPreco: TcxTextEdit
            Left = 424
            Top = 128
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clWindowFrame
            StyleDisabled.Color = 16119539
            StyleDisabled.TextColor = clBlack
            TabOrder = 3
            Width = 129
          end
          object cxLabel7: TcxLabel
            Left = 334
            Top = 131
            Caption = 'ORIGEM PRE'#199'O:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Open Sans SemiBold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object TeDescricao: TcxMemo
            Left = 91
            Top = 33
            Properties.CharCase = ecUpperCase
            StyleDisabled.BorderColor = clWindowFrame
            StyleDisabled.Color = 16119539
            StyleDisabled.TextColor = clBlack
            TabOrder = 1
            Height = 89
            Width = 462
          end
        end
      end
    end
  end
  object cxLabel8: TcxLabel
    Left = 338
    Top = 196
    Caption = 'PRE'#199'O M'#201'DIO:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Open Sans SemiBold'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object TePrecoMedio: TcxTextEdit
    Left = 428
    Top = 193
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleDisabled.BorderColor = clWindowFrame
    StyleDisabled.Color = 16119539
    StyleDisabled.TextColor = clBlack
    TabOrder = 2
    Width = 129
  end
end
