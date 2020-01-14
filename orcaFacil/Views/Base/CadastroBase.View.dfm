inherited FCadastroView: TFCadastroView
  Caption = 'FCadastroView'
  FormStyle = fsNormal
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited PnBotoes: TPanel
        object BtSalvar: TcxButton
          AlignWithMargins = True
          Left = 184
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
        inherited cxLabel1: TcxLabel
          Caption = 'CadastroView'
          Style.IsFontAssigned = True
          ExplicitWidth = 140
        end
        object LbOperacao: TcxLabel
          AlignWithMargins = True
          Left = 320
          Top = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = '(OPERACAO)'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Open Sans ExtraBold'
          Style.Font.Style = [fsBold, fsItalic]
          Style.TextColor = 6050636
          Style.IsFontAssigned = True
          ExplicitLeft = 414
        end
      end
    end
  end
end
