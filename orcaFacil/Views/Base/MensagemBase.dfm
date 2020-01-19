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
    ExplicitHeight = 174
    inherited Panel2: TPanel
      Width = 426
      Height = 172
      ExplicitWidth = 426
      ExplicitHeight = 172
      inherited PnBotoes: TPanel
        Top = 126
        Width = 426
        ExplicitTop = 126
        ExplicitWidth = 426
        inherited BtEncerrar: TcxButton
          Left = 306
          Caption = 'C&ancelar'
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
        Height = 34
        ExplicitWidth = 426
        ExplicitHeight = 34
        inherited cxLabel1: TcxLabel
          Left = 51
          Caption = 'MensagemView'
          Style.IsFontAssigned = True
          ExplicitLeft = 51
          ExplicitWidth = 160
          ExplicitHeight = 32
        end
        inherited PnIconeTitulo: TPanel
          Width = 48
          Height = 34
          ExplicitWidth = 48
          ExplicitHeight = 34
          inherited ImIconeTitulo: TImage
            Width = 48
            Height = 34
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              00000020080300000044A48AC60000001974455874536F667477617265004164
              6F626520496D616765526561647971C9653C00000026744558745469746C6500
              5175657374696F6E3B48656C703B446F63756D656E746174696F6E3B57686174
              6DE9F94600000033504C5445FFFFFF4D82B84D82B84D82B84D82B84D82B84D82
              B84D82B84D82B84D82B84D82B84D82B84D82B84D82B84D82B84D82B84D82B8B1
              73B13B0000001074524E53004010EFBF7F60DFAF8F309FCF705020EB658B4500
              00008F49444154785EBD924B0E4321080051C0EFFB78FFD3360F5D740198B44D
              673B238628FC998B0B51E1A0DBC83816594DC27823ED028C4670509EC5A90539
              3DE7AA044509FA1A2B3348D9021634031BD9966D7F8E8766FA24BE6CFC113FF5
              4D7C373D74F19B0D33383C032A6C26B0175422AAF01D21F81AC7C0CBF61195EF
              A67C4BFB967B0637F86FC9E0D0981BFC9817F504096F1A37806D000000004945
              4E44AE426082}
            ExplicitWidth = 48
            ExplicitHeight = 48
          end
        end
      end
      inherited Panel4: TPanel
        Top = 35
        Width = 424
        Height = 90
        ExplicitTop = 35
        ExplicitWidth = 424
        ExplicitHeight = 90
        inherited Panel5: TPanel
          Width = 422
          Height = 88
          ExplicitWidth = 422
          ExplicitHeight = 88
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
            Height = 88
            Width = 422
          end
        end
      end
    end
  end
end
