object FBaseView: TFBaseView
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FBaseView'
  ClientHeight = 221
  ClientWidth = 428
  Color = 15658986
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 1
    Width = 426
    Height = 219
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    BevelOuter = bvNone
    Color = 12500670
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 424
      Height = 217
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      BevelOuter = bvNone
      Color = 15658986
      ParentBackground = False
      TabOrder = 0
      object PnBotoes: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 171
        Width = 424
        Height = 46
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        BevelOuter = bvNone
        Color = 14537936
        ParentBackground = False
        TabOrder = 0
        object BtEncerrar: TcxButton
          AlignWithMargins = True
          Left = 304
          Top = 1
          Width = 120
          Height = 44
          Margins.Left = 0
          Margins.Top = 1
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alRight
          Caption = 'E&ncerrar'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F400000011744558745469746C6500436C6F73653B457869743B0519FF850000
            00CC49444154785EEDD6410AC2301484E1ACBC8FA2548A4B6FE2F90A9A45CEE2
            2114BD401A675102F29A11798975F116FF2A85F91669A94B292DDA1BC000D7D3
            31FDA2D600031820B6023CD1010502F0A8470F3D408EEF9043AB02C24F670E6D
            05420188A89FC69D4088F15C8F46252037E40189F085B373BD3BC0117C5C0FE0
            0832AE0570041B6F0DF004109A00F8B844B402F82F2E61A80BE0AFDAC0117AC0
            88F63303970F17B3ABF921BAA3CDDC7801B14637FD1D90884E8C4B4447C6D56F
            41543CF3BF3F240630C0A219E005D2B236AEE0A7E8530000000049454E44AE42
            6082}
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
          OnClick = BtEncerrarClick
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 424
        Height = 32
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 15921906
        ParentBackground = False
        TabOrder = 1
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 39
          Top = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'BaseView'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Open Sans ExtraBold'
          Style.Font.Style = [fsBold]
          Style.TextColor = 6050636
          Style.IsFontAssigned = True
        end
        object PnIconeTitulo: TPanel
          Left = 0
          Top = 0
          Width = 36
          Height = 32
          Align = alLeft
          BevelOuter = bvNone
          Color = 15921906
          ParentBackground = False
          TabOrder = 1
          object ImIconeTitulo: TImage
            Left = 0
            Top = 0
            Width = 36
            Height = 32
            Align = alLeft
            Center = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000C744558745469746C65005072696E74
              3BC83632EA0000005749444154785EED97310A00200800FB609F0A1FD5EACB6C
              726AA8A050E8821B0287E306C16266A1E41310117BC996C0A3772E8080AADEE0
              9F0214A00005EE0BB08A6BEB8EFF67D633A90B50800214A00002F1A719D7F100
              110550187A97BD6B0000000049454E44AE426082}
          end
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 33
        Width = 422
        Height = 137
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        BevelOuter = bvNone
        Color = 14537936
        ParentBackground = False
        TabOrder = 2
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 1
          Top = 1
          Width = 420
          Height = 135
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          BevelOuter = bvNone
          Color = 15658986
          ParentBackground = False
          TabOrder = 0
        end
      end
    end
  end
end
