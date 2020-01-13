inherited FCadastroView: TFCadastroView
  Caption = 'FCadastroView'
  FormStyle = fsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited PnBotoes: TPanel
        object SbSalvar: TcxButton
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
          Caption = 'S&alvar'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000017744558745469746C65005361766520416C6C3B536176
            653B416C6C6E14F5A10000009749444154785EEDD5C109C6200C86E16E56E829
            B3749D0ED239DC43C818F973F92F4149285F554A0EEFA9051F22EA2622535B17
            709DF7AE154DFE99EF12A9F16FD1F608803541014C3C650B5AD31C3672073062
            E43E407C800FEC61E1800424C0F675403C00001000908003F0F21D8F01A8E777
            6540021250BD634880C5A903608DA65C44360BA82F026A04401A230166E45DC0
            D412F003154A51FE95736EF60000000049454E44AE426082}
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 192
        end
      end
      inherited Panel3: TPanel
        inherited cxLabel1: TcxLabel
          Caption = 'CadastroView'
          Style.IsFontAssigned = True
          ExplicitWidth = 140
        end
      end
    end
  end
end
