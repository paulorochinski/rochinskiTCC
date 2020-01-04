inherited FCadastroView: TFCadastroView
  Caption = 'FCadastroView'
  FormStyle = fsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnBotoes: TPanel
    object SbSalvar: TcxButton
      AlignWithMargins = True
      Left = 198
      Top = 3
      Width = 112
      Height = 35
      Margins.Right = 0
      Align = alRight
      Caption = 'Salvar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 353
      ExplicitTop = 0
      ExplicitHeight = 41
    end
  end
end
