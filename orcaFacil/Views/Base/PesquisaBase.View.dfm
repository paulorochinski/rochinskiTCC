inherited FPesquisaView: TFPesquisaView
  Caption = 'FPesquisaView'
  ClientHeight = 254
  ClientWidth = 521
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 527
  ExplicitHeight = 283
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 519
    Height = 252
    ExplicitWidth = 519
    ExplicitHeight = 252
    inherited Panel2: TPanel
      Width = 517
      Height = 250
      ExplicitWidth = 517
      ExplicitHeight = 250
      inherited PnBotoes: TPanel
        Top = 204
        Width = 517
        ExplicitTop = 204
        ExplicitWidth = 517
        inherited BtEncerrar: TcxButton
          Left = 397
          ExplicitLeft = 397
        end
      end
      inherited Panel3: TPanel
        Width = 517
        ExplicitWidth = 517
        inherited PnTituloJanela: TPanel
          Width = 424
          ExplicitWidth = 424
          inherited cxLabel1: TcxLabel
            Style.IsFontAssigned = True
            ExplicitWidth = 418
          end
          object cxLabel3: TcxLabel
            AlignWithMargins = True
            Left = 3
            Top = 31
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            Caption = 
              'F5 - INCLUIR,  F6 - ALTERAR,   F7 - CONSULTAR,  F8 - EXCLUIR,  F' +
              '9 - DUPLICAR'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clSilver
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans'
            Style.Font.Style = [fsBold]
            Style.TextColor = clTeal
            Style.IsFontAssigned = True
          end
        end
      end
      inherited Panel4: TPanel
        Width = 515
        Height = 150
        ExplicitWidth = 515
        ExplicitHeight = 150
        inherited Panel5: TPanel
          Top = 45
          Width = 513
          Height = 104
          ExplicitTop = 45
          ExplicitWidth = 513
          ExplicitHeight = 104
          object DbDados: TcxGrid
            Left = 0
            Top = 0
            Width = 513
            Height = 104
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = False
            object VwDados: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir>'
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Background = StBackground
              Styles.ContentEven = StContentEven
              Styles.ContentOdd = StContentOdd
              Styles.Header = StHeader
              Styles.Inactive = StInactive
              Styles.Selection = StSelection
            end
            object LvDados: TcxGridLevel
              GridView = VwDados
            end
          end
        end
        object PnCrud: TPanel
          Left = 0
          Top = 0
          Width = 515
          Height = 44
          Align = alTop
          BevelOuter = bvNone
          Color = 15921906
          ParentBackground = False
          TabOrder = 1
          object BtAlterar: TcxButton
            AlignWithMargins = True
            Left = 44
            Top = 1
            Width = 44
            Height = 42
            Hint = 'F6 - Alterar'
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Align = alLeft
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C00000020744558745469746C6500456469743B426172733B5269
              62626F6E3B5374616E646172643B3013C3DB000000C049444154785EEDD2310A
              03211484E1BD93B71072A960EB11BC47EE12AC02DBA7DD14468BF0C08188FB78
              93140A83DBFD1FB85B29E5A7FB5FC0028410CAE41E75BE6EC385738099D31031
              C6574AC977111E20E70C082AA01E40B0018060037AC4D1106400222AC03300DF
              B61B03C638326001160077B9DE5C5DBB3FDF3CC07D7FB6683F670BC0B8EB1176
              008C0B8205C0B820144FA08BCFFE84A67125401FD703F4710540119F020C7632
              8E00D52432885B022486711A40A212A703303E06BC0134E183BDE44D59830000
              000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            OnClick = BtAlterarClick
          end
          object BtConsultar: TcxButton
            AlignWithMargins = True
            Left = 88
            Top = 1
            Width = 44
            Height = 42
            Hint = 'F7 - Consultar'
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Align = alLeft
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D494844520000002000000020080300000044A48A
              C60000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C00000013744558745469746C6500507265766965773B5072696E
              749891A1F30000004E504C5445FFFFFF8484849D9D9D8D8D8D4D82B88484848D
              8D8D8484848484844D82B86996C34F83B99EBBD884848492B3D45084B9FAFCFD
              FFFFFFD7E3EF6392C1A3BEDAC6D7E8DDDDDDC0D3E6C9D9EAEFF4F9F8A135F000
              00000974524E5300004AFB4D4AFAE6E331F46D430000009B49444154785ECDD1
              470EC2301005D0E01418F79A72FF8BC2184B21604F2436F097FE4FE3D6FD51D4
              4B6EE325E708DC1ED5332C0830A3A080434102143470F3C44880626C8367AE0D
              B0BB4F9034375CA716D8A4008C905B1D4808D15B1F03C82A48222CB958824835
              A02196CD23E81AE0E00BF0C06BC0802DC082399D707A86AF6EB102F90ED803F5
              92D8AFC45F0CD853BF997B75CCDB84A1FB59EE17ED1BAEB1A03B0B0000000049
              454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            OnClick = BtConsultarClick
          end
          object BtDuplicar: TcxButton
            AlignWithMargins = True
            Left = 176
            Top = 1
            Width = 44
            Height = 42
            Hint = 'F9 - Duplicar'
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Align = alLeft
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C00000025744558745469746C6500436F70793B426172733B5269
              62626F6E3B5374616E646172643B436C6F6E656D0EDF5B000000A74944415478
              5EEDD7310A04210C8651CFE7B96C45B1F7642195B087982DB24EFBA30CEE4876
              0712F85A79061B9D88FCB467004208B258EBF99E1BF41D60654E448CF15D6BF5
              70961E809901A10CE883087D002246805B8FAD942244340320E2381108B87DD3
              9492B4D6A600447480DF0A6066445C6DEEB515D00710D7E8DD0044A80346087D
              0022884805302DE7BC1DB08A3380010C6000038C52DF801BF5DF0003ECEC11BF
              E30FBB3E9B500CE46CA50000000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            OnClick = BtDuplicarClick
          end
          object BtExcluir: TcxButton
            AlignWithMargins = True
            Left = 132
            Top = 1
            Width = 44
            Height = 42
            Hint = 'F8 - Excluir'
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Align = alLeft
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C0000005A744558745469746C650044656C6574653B44656C6574
              654974656D3B52656D6F76653B52656D6F76654974656D3B44656C6574654C69
              73743B4C6973743B52656D6F76654C6973743B4974656D3B4C6973743B436C65
              61723B457261736558E2170B0000010649444154785EEDD6BDAAC2401086E15C
              DC811C027A1316B6E20F82016DD2E612D218102DFD412FC1D6528B54074E9554
              82A216E304DCC299CD4264776D36F056537C0F6C130F00BE5AE5C1011C208A22
              A8D91F16609EA4CF0075BE1211C7F1234992808CD803645946109601F811847D
              0043D80650C4BD4458067004DE021B0055FFBA01B57156000EE0000E703EEC21
              DFCCAACEDEB1F513620D4D003E7E6AFF020E40BE4ED91D8727186037ACA91D50
              EC16F01A60887C39153751D7C81314DBF93B6295CAC6FB7A9F408D908E1B0370
              041F3709A06F4E1B1B07F0718E30F15BAE1AEF61438AA0002DE14048C7C54D82
              189900F8D8858E4B1057CC2700AD888EE23E10E3A227B317D5D799CD40A90000
              000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            OnClick = BtExcluirClick
          end
          object BtNovo: TcxButton
            AlignWithMargins = True
            Left = 0
            Top = 1
            Width = 44
            Height = 42
            Hint = 'F5 - Novo'
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Align = alLeft
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C0000002C744558745469746C65004164643B4974656D3B416464
              4974656D3B426172733B526962626F6E3B4974656D3B506C75734E32EF810000
              009149444154785EEDD2310AC0200C8651CF27F452C5D523788F5EC6A9D043B4
              83354396D01612F0EF60021F38C53724B4D67EED15E00007A4949AB2BD177BE1
              211B403384C8395FA5942876E100B5568100036804020F90083440224E42C001
              12D1011101F8EA1800D0E1E60238C001CBBA710CA077E0A60338801A02E0C5EA
              1C00BD013E3CD30D18B202EC3D7DA00138E006CF4C85BC702328160000000049
              454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 4
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            OnClick = BtNovoClick
          end
          object PnPesquisa: TPanel
            AlignWithMargins = True
            Left = 283
            Top = 8
            Width = 229
            Height = 28
            Margins.Top = 8
            Margins.Bottom = 8
            Align = alRight
            BevelOuter = bvNone
            Color = 16250871
            ParentBackground = False
            TabOrder = 5
            object ImPesquisa: TImage
              Left = 192
              Top = 0
              Width = 37
              Height = 28
              Align = alRight
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF610000001974455874536F667477617265004164
                6F626520496D616765526561647971C9653C0000000B744558745469746C6500
                5A6F6F6D3BCF09FEBC0000008D49444154785EB592CB0D83301005433BEE251D
                B8082A6093D4E02E2C38530E17BB8DCD137A5CACC5D2CAE230A7D11BC99F97AA
                0E718AF76FB798400419549241A4BB0F70FC016A4137F502918302040422A0D0
                C55E2033208613BADC0B540682E1025D1D0E3C7A841528715FE2728D7DCF688F
                37CF476AC75F464DDA40B2C69EC0D18EBD81999144E90A0CF1073A60247E2F79
                1EBF0000000049454E44AE426082}
              ExplicitHeight = 30
            end
            object TePesquisa: TcxTextEdit
              Left = 48
              Top = 0
              Align = alClient
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Properties.OnChange = TePesquisaPropertiesChange
              Style.BorderColor = 14537936
              Style.BorderStyle = ebsNone
              Style.Color = 16250871
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Open Sans'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 0
              ExplicitHeight = 21
              Width = 144
            end
            object cxLabel2: TcxLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Align = alLeft
              Caption = 'Buscar:'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans SemiBold'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
          end
        end
      end
    end
  end
  object StGrid: TcxStyleRepository
    Left = 72
    Top = 104
    PixelsPerInch = 96
    object StHeader: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16448507
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans SemiBold'
      Font.Style = [fsBold]
    end
    object StBackground: TcxStyle
      AssignedValues = [svColor]
      Color = 16119285
    end
    object StContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13630446
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = []
    end
    object StContentEven: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = []
    end
    object StSelection: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14935011
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans SemiBold'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object StInactive: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14935011
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans SemiBold'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
  end
  object FdDados: TFDMemTable
    AfterRefresh = FdDadosAfterRefresh
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 88
  end
  object DsDados: TDataSource
    Left = 249
    Top = 99
  end
end
