inherited FEST0001CView: TFEST0001CView
  Caption = 'Produtos'
  ClientHeight = 222
  ClientWidth = 497
  Position = poScreenCenter
  ExplicitWidth = 503
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 495
    Height = 220
    ExplicitWidth = 495
    ExplicitHeight = 220
    inherited Panel2: TPanel
      Width = 493
      Height = 218
      ExplicitWidth = 493
      ExplicitHeight = 218
      inherited PnBotoes: TPanel
        Top = 172
        Width = 493
        ExplicitTop = 172
        ExplicitWidth = 493
        inherited BtEncerrar: TcxButton
          Left = 373
          ExplicitLeft = 373
        end
        inherited BtSalvar: TcxButton
          Left = 253
          ExplicitLeft = 253
        end
      end
      inherited Panel3: TPanel
        Width = 493
        ExplicitWidth = 493
        inherited cxLabel1: TcxLabel
          Caption = 'PRODUTOS'
          Style.IsFontAssigned = True
          ExplicitWidth = 109
        end
        inherited LbOperacao: TcxLabel
          Left = 389
          Style.IsFontAssigned = True
          ExplicitLeft = 369
        end
      end
      inherited Panel4: TPanel
        Width = 491
        Height = 140
        ExplicitWidth = 491
        ExplicitHeight = 140
        inherited Panel5: TPanel
          Width = 489
          Height = 138
          ExplicitWidth = 489
          ExplicitHeight = 138
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
          object TeDescricao: TcxTextEdit
            Left = 91
            Top = 33
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
            TabOrder = 1
            Width = 390
          end
          object TeUnidMedida: TcxTextEdit
            Left = 91
            Top = 62
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
            Top = 91
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
            Top = 65
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
            Top = 94
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
            Left = 330
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
            Left = 352
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
            TabOrder = 9
            Width = 129
          end
        end
      end
    end
  end
end