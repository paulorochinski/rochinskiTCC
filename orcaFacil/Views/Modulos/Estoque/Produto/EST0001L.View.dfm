inherited FEST0001LView: TFEST0001LView
  Caption = 'Localizar produto'
  ClientHeight = 374
  ClientWidth = 773
  FormStyle = fsNormal
  Position = poScreenCenter
  Visible = False
  ExplicitWidth = 779
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 771
    Height = 372
    ExplicitWidth = 613
    ExplicitHeight = 264
    inherited Panel2: TPanel
      Width = 769
      Height = 370
      ExplicitWidth = 611
      ExplicitHeight = 262
      inherited PnBotoes: TPanel
        Top = 324
        Width = 769
        inherited BtEncerrar: TcxButton
          Left = 649
        end
        object BtSalvar: TcxButton
          AlignWithMargins = True
          Left = 529
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
          ExplicitLeft = 184
        end
      end
      inherited Panel3: TPanel
        Width = 769
        inherited cxLabel1: TcxLabel
          Caption = 'LOCALIZAR PRODUTO'
          Style.IsFontAssigned = True
          ExplicitTop = 3
          ExplicitWidth = 212
          ExplicitHeight = 37
        end
        inherited PnPesquisa: TPanel
          Left = 494
          ExplicitLeft = 336
          ExplicitHeight = 27
          inherited TePesquisa: TcxTextEdit
            Style.IsFontAssigned = True
            ExplicitWidth = 187
          end
          inherited cxLabel2: TcxLabel
            Style.IsFontAssigned = True
            ExplicitHeight = 21
          end
        end
      end
      inherited Panel4: TPanel
        Width = 767
        Height = 279
        inherited Panel5: TPanel
          Width = 765
          Height = 277
          inherited Panel6: TPanel
            Width = 763
            Height = 275
            inherited Panel7: TPanel
              Width = 761
              Height = 273
              inherited DbDados: TcxGrid
                Width = 761
                Height = 273
                inherited VwDados: TcxGridDBTableView
                  DataController.DataSource = DsDados
                  object VwDadosCODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object VwDadosIDPRODUTO: TcxGridDBColumn
                    DataBinding.FieldName = 'IDPRODUTO'
                  end
                  object VwDadosDESCRICAO: TcxGridDBColumn
                    DataBinding.FieldName = 'DESCRICAO'
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited FdDados: TFDMemTable
    AfterRefresh = nil
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
    DataSet = FdDados
  end
end
