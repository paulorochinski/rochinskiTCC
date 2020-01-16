inherited FMensagemView: TFMensagemView
  Caption = 'MensagemView'
  ClientHeight = 176
  ClientWidth = 430
  FormStyle = fsNormal
  Position = poScreenCenter
  Visible = False
  ExplicitWidth = 436
  ExplicitHeight = 205
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 428
    Height = 174
    ExplicitWidth = 428
    ExplicitHeight = 191
    inherited Panel2: TPanel
      Width = 426
      Height = 172
      ExplicitWidth = 426
      ExplicitHeight = 189
      inherited PnBotoes: TPanel
        Top = 126
        Width = 426
        ExplicitTop = 143
        ExplicitWidth = 426
        inherited BtEncerrar: TcxButton
          Left = 306
          ExplicitLeft = 306
        end
        object BtSalvar: TcxButton
          AlignWithMargins = True
          Left = 186
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
      end
      inherited Panel3: TPanel
        Width = 426
        ExplicitWidth = 426
        inherited cxLabel1: TcxLabel
          Caption = 'MensagemView'
          Style.IsFontAssigned = True
          ExplicitWidth = 160
        end
        inherited PnIconeTitulo: TPanel
          inherited ImIconeTitulo: TImage
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000001974455874536F667477617265004164
              6F626520496D616765526561647971C9653C0000000B744558745469746C6500
              496E666F3B6D122D860000011B49444154785ECDD7316E84301040D17084A542
              5C81B3A4F7115C25DDA6B552AF5CEF5152F80A5B70036E81A8263F1185159164
              26AC98146F45853ECBC8D80F22E2EAF3E7F1F54DA3474046C1847935A12023A0
              57DC4F1D30206184288D4818F6043488B841FEE88688C61AD0E102B9930B3A6D
              40872BE4CEAEE87E0B68944FBEE0092D4EEBF5A2FC279A9F022244E15908AF11
              F0025188DF050C86816B37025AC3600E5B0109B23740297D0DE8314276BC82B3
              719DE8EB8050171A86F0641CC25AA80332E460B90E280E01A50E98AC011B3320
              46531D303B04CCEE01FFEA1514878052076487805C07048780A05E8AED01F6A5
              F8433A3020193FC7F600FBE71888070444ED96CCCEBE25F3DF94FA6FCBFD0F26
              FE4733FFC3A9AB77B1F2A0BCBF49974B0000000049454E44AE426082}
          end
        end
      end
      inherited Panel4: TPanel
        Width = 424
        Height = 92
        ExplicitTop = 33
        ExplicitWidth = 424
        ExplicitHeight = 109
        inherited Panel5: TPanel
          Width = 422
          Height = 90
          ExplicitWidth = 422
          ExplicitHeight = 107
          object MmMensagem: TcxMemo
            Left = 0
            Top = 0
            Align = alClient
            Enabled = False
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Color = 15658986
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.Color = 15658986
            TabOrder = 0
            ExplicitLeft = 176
            ExplicitTop = 1
            ExplicitWidth = 185
            ExplicitHeight = 89
            Height = 90
            Width = 422
          end
        end
      end
    end
  end
end
