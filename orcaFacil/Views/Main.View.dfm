object FPrincipalView: TFPrincipalView
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Or'#231'a F'#225'cil - Paulo Rochinski TCC'
  ClientHeight = 466
  ClientWidth = 577
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object RbMenu: TdxRibbon
    Left = 0
    Top = 0
    Width = 577
    Height = 159
    ApplicationButton.Menu = BaMenu
    BarManager = BmMenu
    Style = rs2016
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Office2007Blue'
    QuickAccessToolbar.Toolbar = MbAtalhos
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object TbPrincipal: TdxRibbonTab
      Active = True
      Caption = 'Principal'
      Groups = <
        item
          ToolbarName = 'MBPrincipal'
        end>
      Index = 0
    end
  end
  object SbMenu: TdxRibbonStatusBar
    Left = 0
    Top = 443
    Width = 577
    Height = 23
    Panels = <>
    Ribbon = RbMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object BmMenu: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 224
    Top = 176
    PixelsPerInch = 96
    object MBPrincipal: TdxBar
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 595
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'LBProdutos'
        end
        item
          Visible = True
          ItemName = 'LBFornecedores'
        end
        item
          Visible = True
          ItemName = 'LBOrcamentos'
        end
        item
          Visible = True
          ItemName = 'LbCotacao'
        end
        item
          Visible = True
          ItemName = 'LbAnaliseCotacao'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MbAtalhos: TdxBar
      Caption = 'Atalhos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 595
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object LBProdutos: TdxBarLargeButton
      Caption = 'Produtos'
      Category = 0
      Hint = 'Produtos'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000E744558745469746C6500426172636F64653B9DCFD916
        000003AF49444154785EC557BB52154D10EE59B690F27934C60431014DD04434
        A04A7D0F63435FC00C8448CF39890906BE80F17FA9F20D48CE757B9CBECFB285
        1450E5591866A6A72FDF7CDDB3B3A49C33ACF36960CD4F1A8CFF6ECB14B4DFF4
        B909B05BDA20B596D27032F9F9AD69361E4939E43E449F661E873C5FB1CE23E0
        DF6CF2A16CD575E747070F770840BAB8983D3A7AFEE0F63C5E2B1CB68F9F7E6C
        D3E6990154E8F325D6D6314C91B19CF2150142351B3529719F521299B2B0B5D9
        02C5340090B13421CBBD24190E684E462BA40856E3154359CFA42720025C626B
        44364A9C023404180ED564B0B7CC1D3B894DD6AA4CA2AEDBC831060B88E8EF81
        94058DD3B4F7E22DECECBFE2D9EEB3D7F0CF7FBFCAFC90D7F70EDEC1CEDE2107
        7D226BDCFF5BFAC7222FF66F60B7E893AFDDA745E7FFB2B6FF9268E796C101A4
        067C428BC00D6A389A43A0DEF783D0505E99023B113C178F34371920A9442D88
        5B4F0133A0A884621A637D643400C9738C91E7A6C784877D469D03FB42F351C7
        E801407714C5A84E32A2CB78243A43193791A303ACC08BCC19EEB4065A039085
        25ED11D0C7590B4E43A2360896D09840A4B9E9840D2BA1E8844D9C825C2F4218
        0F1B659F82B0BEF61517BE036790C7AA169BA96B40E810B1D782E548C63E574B
        03133DC9101CA86EA83E6E5A17E07AD85D55846E841A940252A94731455EB166
        876D228568FAA11704F17A00E850294AAA845EF5E8F944B222705E50D07945EB
        EE7C03CA0AB3E1390FB0E227DE8466188556175F7F9746B13BED531FEC4461C7
        E9B9A208D1F22A4276C43248E1288E65C844A26B2A53FBB820D08461110C4013
        6FA530A9F38CD851BE3C7FF3D90CC08295B57A5B56EE8BF9CC640198F592F9F1
        228C14E80A8643EEC65F4FA06D00265F8E39F078745CE65294E32F27B0B1910C
        A033331A7D86B6C8CD1564673052D7BF0DAD508487F97C0AA9AA8165A7642E85
        A3658E6B7B49851845E740962B5140C40088A0278340F719880204E09DB56DA3
        C8ED22B681DDBFD18FBE9E15FD04E3C9A9D9C8930A4BE3D3C2460393F159EF18
        E74111065D7C7F2D56F4D7CE7F929B4C155236A85139AB95F40B0EA35851595A
        E9A941BF61EBDBD072220BEC1D0697138DE30845E8FE1B5164C142B29DD660FD
        26F5CB28739E20C3FDADD6E88BE66CFFF94B3396635E7F2A096D89FABA069000
        2C17B3E9F9FB0FE36DA83FA3222A647714F2CC53D3867E5A38562097470283DA
        2D17D3EF94319A6E96B655DA3DFB44BBEE9F8DBBAD33CAAEB47969531236DE6E
        FEA43BFC2B81D4923B5ACF931BAEE0F53DF01B561D2DE87CFF0B760000000049
        454E44AE426082}
      OnClick = LBProdutosClick
    end
    object LBFornecedores: TdxBarLargeButton
      Caption = 'Fornecedores'
      Category = 0
      Hint = 'Fornecedores'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000F744558745469746C6500437573746F6D65723B9CDDD5
        E2000007E049444154785EAD96796C1CE519C67F333BB387D79BD8D859DBC4C5
        8E494202E480244DC1CEA18433A4694D4B1B8A1C84D434D0804A21FCD3A8EAC5
        D52A256A05B4546D290D422AADD4945B8812290D2A944248024E70ED5C766CC7
        C7DEC7EC1CDFDBF1C85214118ECA7D568F76B4DA99E7F73EDF48DFA789089FA4
        1BE6861125284029667942A7522CF1E02251E0098794C82E4FF1BA00FF1E72F9
        5FF4A900D7CF31B9F6DA35BCF4D2EB7744A2B1C7EB67D411895441284CC555E4
        8B65C6C7C6C8E7728FBD73DABB0B105F7C56E99F48A7692881975EDEB3A12159
        FF68FBF22534CDA807F1C865D2A4C64629E6F3446209A289E95B17CE08DD0E18
        FE7DBA6F6DCA0000A298619AE63397CE9FABA753639CEA3FC1D0C000A3C3A719
        1B1D6564649453A787A9541CEAABF45FAE6D35DEBBB239B405300388A902B8C2
        6DCD4D8DF1B25526E507A6D2590A258BB26D53B23D8A8E87725C9A1B6BF05046
        A6E25DE27A3CBE28A9DF04185305D010BA1A9375E4B359C673050A96E7070B79
        DF155730748D654B2FE6DEBB6FC5F1C40713F296C21FBE0B084F194009176A21
        83B14C81D19C4DD1156C74743D44C40CB161DD4A1EFED156E6CF6DE62B9DD711
        D2B400508425406CCA009E483A53B019CB55703CC5E59F5FCEC68D1BFC89BB78
        F2B73FE1BEEF76611AA0BC0A5FEF5CC9551D8B091B1A225203987C8A8C4F6D40
        69C73225EBFC8AE3B17CE5553CBCE387D899E38857F1ED0656AE1D581387756B
        2FE3DD033DCE68CE122034D506C4F178753C9DA56CD974DD7E17CA2982721115
        84E3B9150200A7826D1509EB36336BAB0D47490A50530550C325F5C4C8F0C8B0
        E3B8D4D7D505C16AC2AE83E705E1788E15B854C893CBE4D1450A15975781F294
        1BE8CFA974D672B78B260C1FEF45D0CFD46E5782607F7A3CDF651F607C344BB9
        E29C3C9957F703F92901880880F3614AFD2D1432FADF7BF30DF45004510AE5FA
        A193D5AB89E9F3390AB9028343E364CACE21202522EE541BE0B2869000C54824
        767F7FCFFBE3BD478E8166044BA026A7B78A0532E914FD2747E83D3A921B2B3A
        67EA9F2AC0BBC32E80BDB737F597EE0F7B76EF7DF965FA0773B82E54AC129954
        8AB1917106FCF043EF9FE2F040FAD503239557006BEA0067964201B97D7DE9DF
        0CF6ECE7C53F3FCF3FF675D3DB779A932746D87FE0186FFCB38FA1E13C87C69C
        2780F1E09EA96EC713BB1A100662939EFBF34DCBF6CC9A3787FD6F1DF42B1FC2
        755CAAABA3241231F2259D5FBF71B4133808948002501611EF3335B072E54A3A
        5674D0DE7EE544B80934CC6CFEDC2D6D73E6FF7EF6BC857BAE58DBF9D7B25ECD
        D22F2CE26B5DEBD874DB7AD66F6867C9D2B934CFACC736AAB96871C7AEE9B5C9
        3DD5899AA7A3D1D816A0D51F249A482488C7AB88C5621FA99749D3D1D1C19DDF
        D9061089C7E30B2FBA78F1BEE51DD7C8B7B66E93BBB76D976F6ED92A4347BBE5
        C0F38FC8DBBBEE95B79FDC227F7F64A33CFBFD2FC9B30F6E91E3870FCAC66F6C
        92CDDFBE47D67F79A334B7CC96AAAA69EFE9BABE02A8FA62E75789442267659E
        05D0DEDE0E1002DAE62D58FAC19DF76C97AEAE2EF9C5AF9E9487763C2AAB57AF
        91EEEEC332A13F7576CA8EFAFA0907D7133A7CE4885CD1BE426EDB72AF6CDE7A
        9FFFFFD5B260D1E51289C68F018B0033120E7F3C00A0017517CE99FFD4CDB7DE
        213FDBF9B8F8CB22DB7FF053D9F6BD07E4860D37CADAABD705617F5CB3467E0C
        721FC823AB5605002B56AD91EB36DC2C37DCB849D6FB6E69699179175F224D33
        5BC5084776034D80762653D0395B865FFDBC69B58D372DB8743E63E369060707
        F9DD133B397CE81D928D2DFCA7A71BCFF3B87AC70E868061E0C69D3B83DFFAFA
        7A1134AC62897FED7B8572B94C2E9BC38C440985C2D76B9AB600087FD25E302D
        D93873F39C39B363CA13C65369162C5BC5922BAFA1FFD420A7FA8F3223D9C483
        0F3D8C532CD204CC065426C3030F3C446BDB3C2A953287F6EF45D343E8BA8112
        7C2BAAAAE2615D0F6D066ACE09A0F902EAA2B1E9D7B4CE6A219BCD522814B02D
        9B81E33D343634D0D0DC46D3056DEC7AFA198EBEF61A1EE0001FECDECD1F9E7A
        8A4855024FC1EC4B96011A9A1923E45B290DD30C83A6AD069241D6391A08D79E
        77DE8269B5754DD3130952992CE5B285EBBA585619231CC5B66DCC7002E5B9EC
        7DEE396CC002F6BCF002513FDCB61D5CC7412940148820688868E82113C330EB
        FDEC8540E45C00558944CDD50DC91994CA650A8512966D0700C9C656BA0FBE43
        319FC3766C92335B797678140BA8002F16CBD4D6CFC4F35C9452F4F71E044D43
        44A10090E0639A26C05540FC5C00D56624B6A4AEBE8E62B18C55B1F082893C3C
        519CD7D0C2E1436FE1942DC2D169A47528695AE062388CE3B9B8AE2275FA048E
        6BA3E906BA6F4D989446C80C032C06AACF75248B860CF3FC783C46A150A4623B
        38AE1B3C589442370CC2B11A064E74539B9C456D5D234772593C08DE0DCF5378
        9502D9F45850B76644104204128246742D04684D20B17335A0695A286E1A2665
        CBC2AE04EB1F54EA7F070191687570342BE6C608C76BE98D5773CC379A09E231
        3CD0871632D0FD70FF594128806882E73A800610FBB84369BA901B7FE1CD37DF
        BAC5347452E94CF0522925880A40509EE089F25BE8215193A4502E01904D8D32
        7EFA38023E80A079003A220A8440826095F280BC08A43EB21B4E6E3E6DCD17B4
        3D16A9AA5DAB44E1290F35614F4D02F8562E67AE3DC4B70AAC102588B804D0E2
        1158C9248800F2BA886C05FA44C4390B6012220C24817A20C2FF5736300A8C88
        88CDA4FE0B5DB0B1A0723AE2060000000049454E44AE426082}
      OnClick = LBFornecedoresClick
    end
    object LBOrcamentos: TdxBarLargeButton
      Caption = 'Or'#231'amentos'
      Category = 0
      Hint = 'Or'#231'amentos'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001F744558745469746C650043757272656E63793B446F6C6C61723B42
        75636B3B4575726FF8F3458F0000098249444154785E95970B7054D51DC67FF7
        EE6EB2D98484B079902709240152CA4BA02111142A8AD6521E2AD856C5B13A56
        0B436DC75AAB58ADD3878F4ED4416D153B45AD169032B558A62964445E26E561
        C2232421AFCD936C36BB9BCDEEDEBBF79ED3CC9D1D9B713A4ABE99FF9C3B77CE
        99EF3BDFFD9FEFCC555ADFBB9DF128B9738F028C2F353EC6810444BC64CBBBB7
        4B2416E223A577ED414AC9D5C00E50B8FC7B28896E1C19CBE284D8DE7DF2FAC2
        AF154DBEDB99605BA9AACA741525C794B24F08D9A6EBE2509327F0D6C6A70FF7
        967E6F8F09487DA0560ACD4B57ED6E26029538C6C82DE24D2BA7A734BCB5EEF9
        8AAFE536E6942D7E3277C986AA82EBEFCF99B67A1B85D7FF202777F1FAAAECB2
        6BB62F2CCB693CB963CD5D80035013B25728081361CA090A909090B756016C3B
        7E5C99F7D4E60587DD8533B7E62DDBEC4C2FAD20D195049A17C3DF04D11E1212
        05938B66935779DBA4BC19B37736BCB17EEF9B8F2CCB021467D12665C2024ABE
        BBC722FF766561CACAF939FBDC33962CCC98B30A69043047DAF07B2E706AFF5E
        0EBDB693032FBCC4BF77BC4AFDEEB709F69C27A36C1E19250B6F5D5296B1E7E1
        6F97BB80890B0014C0FECCE685DB5373672E4C2D9E8B08F76086FA693E7E9C13
        EFEF63D4EBC595E224333F1BD7A424468786C6DE7F40D3E183A4E566913AB5A8
        EA9E6F966C07D4390FEE53980014C0F1CA96A5336E5A52D4905FB5C1810821B4
        00176A8F71A5AD93E4B414144002725CB74B2918F18FB0F4F69B714ECAA0E3E8
        91F099D681F2CDD5473D8098C829B02D9999799F2B33DF818C20A23E863C3D16
        B92BD58510266939F914CC9D47B27B0A21EF109E86B3F87BBA9955B594249713
        11F3E372A7B9A6F942B701D54C009680449BBA3C296D3246A0134551E93CD782
        D3E5C4340CD2F3F299B5AC02A10731473CB892ECCCBAF61B6891F92438406841
        CC512F492E1B0E455903BC04A028CA550B505594625B828A31DACFDE17F79355
        9869ED0C29E9B9D842436D1D7C6EBF64DD23776057EC98BA8E1909606A415435
        01336614003640306EC5570950A429272B3286D4C36C7C7C3347DEDE8FD0EDA0
        C28AFBBE6FED062991486B34021E4C11C1880E23B468B710667DCCD02F074775
        2FA0028E2F26E6CFFE582191120120AD475EF8611D76002366FACD682453C434
        FEF48BD7C92B980C8A86DDE1E02F4FBC88B4EC54AC78BD63EB6A4C5DC38C8D0E
        6A9AB1BF231CF55C10910A9F30D645660AF7CFDFACFCAD90B24F9AA24D8F9987
        BC9EF05BEF3C77A1F7770F9C3401D936B45B06A35DECDAFF3E000A9072ECD7AB
        0F172D285BEC6018476A1E8DB5F5F4B774592A33A74D65FEAA252858AA897ADB
        3184B8E00BE9BB6A8DD04D0187726DC9B4398E82A9D3494F7593E24A25341AC4
        17F4D2D97B99A6B6C691803FBCEDD547CFBC0B188038D3F3BCFCF3BEF7A8DE72
        1A0548FAE8F195CF1697E53FE2CE06A1871909DA38F5AF53202112D6494A4BA2
        7C611E195353E8EB0E9C3FDAD0F7BEBF32E3FEECDC198555F3579290A8A0C57C
        684608434401B0A94E126C2908239163A73FA1B9BDF91F9EE6E003FB5F6B1D00
        E4D6EAF9F2E56D67B17260FBFA39A537CCCF3B5BBA20CF41CC87A226D0D23888
        E7A2E502D1480C7F4043D38C413DC1561D5D5BF0E0BC059505D7942F26A40F10
        8D7911D204092FBFBE0F096C7D705DDC6295A40437E72EB651D7F0E9B1FA9A81
        D57507FBC30FBD3857BCFA9306AC180612F66DAD7AAEB038F347798512699AA8
        4993693F3F40DBD9CB0821B1DC8889D73A17A4CD2C58346FE5758B9713D27A89
        C402E8BACE89FA263C3D83A4B81201484E7691E44CE41B8BCA506D2A4E7BDAD8
        9C462EB6343FFFC6E3E71F074C40DAB080EC1E0A9F9C9BE15C61B327E625BB4C
        8416C69D3385ECE97968911891B0D633E09047C273A6DCBD6AE90DAA66FA88C4
        BCE8319DBFEE3E823F304AA2C38EAA2A082918F406F17AFD68BA4E6E6E3ABA19
        26CB9D454B47C782DC92A4B72FD5FB8380B47FB4AD52DE527DDC3CD63A143C7C
        BE7FD372CDF820E44B9E9F5F64439A8324DA1D7CBDB288A85972BAE74A675571
        7EAE4D67005D8F58B6D7D5B7909864C366B30192B5AB363025CD4DEDC91A5ADA
        9B09F8754CD30020647A28C8CB70050391CF1353353493388C970EB77B761EED
        BCB1B575A8FAD4F1E16847F328C37D238406BA09F6B5B50C69E1D2A9D96E0291
        7E42DA20421A44A226AA8215D9A6101C38FC218DEDB52CAB58C2967BB6B1F13B
        6B3185C148D447580B3025330955650DA000D8633183E1934FC9F48AA715C0F8
        E8C215DF583DF65065C1CB0BFC29F78EC5F40A2165564833FDE165CE292E9783
        B0E1453722C44C8DCC296EBCC38320B16A2030C8EE3D1E9CCE4FA9585ACA8CD2
        6C22FA30BA114502094E8190B2202E405176DF3D0F2BE3E2E974E73B8D0A1650
        C75FD740E2432FCC1D58BF66B96378B4CBB25F2249269703FFFAD46A44D56643
        014C29D023065E6F886B2A72292B77C79314A4503874B03DF8CE33AD198061BF
        63D7677C0112605C8C121FEDA669FAA3512DD31026202CC111DB20EBBE751335
        1F1FA5D3D383048B0C24C9A9361A4E0F50322B1D0980448F9A18A639441CF62F
        B9B7E5B85B4D0222A68B8EB16ECFB4B9400801C02BBF3FCAD22A0FB7AE5EC988
        DFE03F9F3570AEE9D2E742EC09AA3557C6258C84621886E90124809DAB8304CC
        68C4F864ECAC2F9E5EE6C29006524A4ACBB23873BA1BD41A669717B068512917
        5B5A89C50C000AF3A722A4B40A24FDBD210C4DFC1D1013156074378776BA92BB
        B71415973B84B47645F1B47CFCC120F5277AF8F8502708C9D4826414C0690551
        3941D90152A2450DBABB02E1A04FDF43BC6DED5C3DC491BD7DEDD9C5897F686C
        ECFDD1CC3993AC6337776E01A9299368EFECA2B3BB0729213BD34D4E76D618F9
        1CFA434D08DD124BD3391F9150ACFAF0AE2B3DC4A14EC00101C44E7E78E59797
        5BFBEADB5B4691C2C43BDA49C10C17B7DC5C891458026E5BB792058BA6D11568
        64541BB14E45CB451F3D5DC123CDF523BF01C49A6D5327D403DCF944B17CEFD9
        76D3D3140EB6378E6C3285E7037F207DFEF4D929E866270374F0D32DF7597DF1
        99A7162448249A6672A96188BEEED1D3BEDED8C6A61323A30042C8093930FE8F
        C7A83B30E4397BC87763EB256FF5B11A4FF452E310DE813075CD359CEDAC2512
        89313810E6E2D8FB6335DDE1EEF6D00B2D75A1EB8EEF1D1A003878E11129A464
        420E0821F8B8E549795DE9AF14C0683D15F28DD563D7DC9CFEF24840BFD7E660
        8544C95255CA4C41B322456F2C266A82578C5D27F60DF7038238391264DC01E5
        4B72807139C08647F3E3DF580292BFBDD8FB7F12D32ABE1064D6825B1ECEB498
        947149F7CF1D835727E02BF05513BE94E0BF6CDA2D4D45DE5381000000004945
        4E44AE426082}
    end
    object LbCotacao: TdxBarLargeButton
      Caption = 'Cota'#231#227'o'
      Category = 0
      Hint = 'Cota'#231#227'o'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000015744558745469746C6500436F6E646974696F6E3B5275
        6C653B1B70080A000005FA49444154785EB557796C55C517FEE696BEA250BA41
        C35AF821148A206891C01F94457F35454024885114644901912A0A45AB11698A
        144184B2632D052C71830086459045893429481010042B448122205696FAB63B
        73B4F366DE7079BEBED4C449EE9D3B33A7E77C73BEB3BCB2A235079033B62F43
        6030FC37836E9F89D45219B4F4A301D4130C8B6C1C02005733DD0EA00180A845
        C55FED6656543FAD8A290162002380F401A84E2B4C4B10C0942E224070FBEB97
        B307FC1F00A9C701C062CCEA973DAA77E04420649C3873095D535B2874A1388E
        9FAE42B74E2D116EAC2A3B98A16C71B36B0030010209C0EB1760A0A0210293DE
        A83C77151DFF972C37E5B97A2B09799EDABE792832628871599AF350AA34EF24
        A480561E741D94FB09E42094D41BEA9B48A83F60DAB0435A8808008410862F52
        E6C8189200F5A63640CC2C83C7A4BED5AC181524C2005014FC70CB426EE961D4
        35C497C794357D417224D7E7BBBF03516868B64B6906E25427000821F0E4A034
        6300DAA3018DABCB2A30F8E97EC133A6D4E9D5D62F8E624866771D38F2481315
        136DE1E0A1B361525679800B012E08E7AEB9A544F18A5D183F39134CDD56D842
        DD5CF14E816034B3C959C81D3D2B1A44040A04AF05707BDEFA41865F09CE1102
        30314160326E0C374A36F8B62206A13420C8040EE702A0A022B926326A1D1941
        3248156035CBC748E9200FEB01CE396C2E40EA16820B4754D79E6FDE7114084D
        47306272DEB4FD88F1123372292D134328608C85522074CE307D63E36EC1098F
        65F5082DBAAA346DDCFE2D860F4A7700D401E97259F8A6A212CE7E03726401B7
        497A40E20CD46EC324294A40B8BB61B4A1828CB1FBBBB44243170BD26C664294
        05F4EFD301050E004640650187B4A194C6C62538D25C70950524B063EF29545D
        B9893B1B57F9D1F37536AEC52507AEC0D993F7BD343EE3E100003B908665A5FB
        E1F5D8328196BFBB191613C89E365CC547A04A565DBE8189CFF4514AEAEEC186
        A950F6566D281F00800528E0045B08F4E9D5017BF69D80E01C9E9A1A640DEE15
        8C814FB61E42CFFBDA408064BC787DFFD8B87426866D5CBA38912ACF96CA02E9
        81D4AEAD11D7E42EB86FD52021A111BAA57794CA84E01831A427D2525BE8BE10
        547EA1EA32DE9CB3042FE6CE455EFE629C3CF513F4F8F1ECCF18393A07651F6F
        019C4D4C5ECA00B049C680D726F4CDE8029FDB8D8199E9722DA8F6CCE4F79D8D
        6BCD879BF0FDC9D3C8CFCBC6F98B97B0AAB84CCA79BC5EBCB7B4046D539A63CC
        5343B55D93596AC3D2BD8013C983D6ED9265D0B54F4B01411B55594FF271D059
        79F617E99584F82424C435C6E56BD5928692B59FE2B7ABD57875DA04F879B0BF
        986EC90D05540B40A85BBA6D8E798B26C2E3E3F286605200D151161893601CC5
        36293E16D1AE185CBF5903E1F7E39EB6AD5171F81876EEDE8F096386A36952B2
        BEB79994F77410FA7D3EF7FED2E27DFD4D8937C2A4E6590BB62033A3B3026A3C
        3079C2137FBB7A1DA6E5CE467272338C7B761866152C45EF077BE0D1AC81F078
        0518338D4B0E52FD4101F096978E1F0AC005202ADC2FDE83005B36070D0A8A76
        9D9741A87A45A7D454AC7BBF500A0A02A6E7CD076B1085118F3F829C1905F8BD
        FA06621B37C2B8D123D0EDDE34E5001957C14A68AB1F8B1E6310E11A57742008
        0942259ADF26FC71C327EBFBB69D7B515E7104F3F2A7A364DD261C3B7E0A1FAD
        5D88B193DE40D1D20FB07AF97CDDCE6566690AA42E352302004981D0F430C3C5
        85AA4B585DBC1E8332FB22FD81EE985DB802243812139B22313E0E177FAD8219
        30141045A869AA7B69192E8421476DDA7E1B85F397213EBE09A64C1A2D7F5D37
        4D6A028FC783EAEB3520E143BB36AD4C0CEAF22E3D50BFC148072199E05EBFE1
        339C3E53899545F960CC25397E65EA73285CB012935FC84552421CF2663E0F82
        C9454EF4EF00E89AA0FB3E31604AF628CCC81983EBB7FCF0F9B9E433AD731A36
        6E58AED29870D36DC3B6032C0B321E60A6AD46A4C0021033F3ED2D7FBE36350B
        8E3C65E6336484E98E7397ECC03BAF0F8BAD2F05C2EFF3EE99B378DB43D2AED1
        AB9B50C441AA8FF86DFF5E00A23E0064BC2D7C6BE460552FAC08FF1DB3307BA4
        7501F0FD055252C89F2A16627F0000000049454E44AE426082}
    end
    object LbAnaliseCotacao: TdxBarLargeButton
      Caption = 'An'#225'lise Cota'#231#227'o'
      Category = 0
      Hint = 'An'#225'lise Cota'#231#227'o'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650043686172743BB7ACBF070000
        063149444154785ED557696C545514BE6F660AD48480DA18228110C51FA2447E
        808A08051211098B54134044512915288D40145B6C21C128DB0052AA624D8BCA
        D25A9074A89442A1154463A101A14D41164359B4A5D06DDAB7DDC57397E7EBBC
        115A7F18E26BBE9EFBCE79F79DEF6C776634C618BA9B970FF0FF263067D521F4
        6551F59CA4B587CF24AE3A74E6832D3F4F7E65797197F7479560C1D24CA48104
        AD941A4875239F94F79B572F8C85E504C054709C3063E2E3B1864D5141D11923
        377DDCD4E4A59BF73B3B98A6A93DC95104025E05E37FCC59F38D0CC50C188A28
        45008A32539EEDCB9D02C6B5EB66A0B4BCB27FB8B5AD4758C7A8FA7A181986E9
        07DBABE0ACDF82F736653319A543BE0B04187343550BD3C2A8EFFDF74C6ED5ED
        CFD3B37F898D1F1C77A9F6D2F9DE5535BFF71BD0BFCF8D094FF53F991F3A3588
        10EA8BF3DFA25FE5950C797DFAF30D596B5256C0F68FE7BDFB89E97A88761881
        A4251BD0DB808E12F403E7AF2BD30F57D5B17D27AFB399E97BD9D6BC920B7537
        1A0F802D04C8000C066C6B6C6AFD76E5BA6FEAD664E65D6CD78D6CD07D06B82F
        69C946E1C38B28C5DCC5EB011B9494CE01BBDFFAB0C4081DBFCA3E2A3CC75E5B
        51AC2BC74980B8A425EB1107AC7B02369AA69D19FC74D7B9F455B937EB1B1A0B
        41970FE8CB9B737AFABECE0804D1DC45419408709C9F3D5F5B3A3735C79C961A
        32A7A7EDD5B7EC3EB51CF4DD13C5B3EA7925411F00A4F2C8737614D724A7E7E8
        29C1434D8B3696DFCAF8E2D84B2FBFBF37C2DFEDAE08E7296959FA4F15D53FF2
        7BC093EE863BEE4F04E4CFCCF8DE2A3DFD072BAABCC6129616D6777E0E28E720
        5683F35E5939A111D35E8CAF1C3E6C501DD7699A56E11DE57F025CD920737D9A
        86F984FC5ADB8A30A644EDE93CF29ADF2E9726A766EAC72AAAEE14B94F4D5237
        85EE4A069CE052371F993D69F177F513DFD95DFF424AC17814CDDEBD56E4564C
        8691DB6A9A96BFBDEE428F59539E3EFECCB0C7EE14B9FF6C41C64144E9684A08
        A284222E2DDBFA6168E2A6E7C08EFF9EE5AE9C03176A1BB3DF4878E25E035394
        1FD2AD0ECE8F3BA9F51268B85C3B7AD88C594AC5044A826BE3B90D40FE1501D3
        B049D8C0A8EA5A1831C288727E42BDCCE7CD18D7F38811C108375FE4F54381DE
        0FC32DF664B78B042CCB7E3327EFC4D78C51F4D083BD16A9C803D53B971D24A6
        118F6D1B61CB425C1AEDC691B169DB2709020C40A90C96DA8810E26D4ED62502
        85C1A9FB413CE06932DFCD2B57E287CF9E272274AED0CAD45120FC3C5A4631D8
        B02C0225B0740978268DB912E010E8043ED9601019A459837DBE5E03799A5509
        40125B6500890C5020A1CAD6CD33EE4CF5850D1029EB0A014421228D724758D2
        A616E884438DF068990D704A801191198839BD7D5911B38C91EEB14B9161E1A3
        C3E7678DE315EF8C80E68070C7D40660AE10118BC8C1C62535C2E0D7529D0C6B
        8A0501BFC6463E327E8A24A6925FB96BDB4895795B95C075763B1294D7998003
        4AE419EE12F0611B226EAF87F25C558E28CF98B011CB1259B31BAA64C3C53D8A
        AC76DD298FD4756814BF82CFD3307EEE8459AD086113940CD6CD4E9A35267AC0
        9293C05476643FF86C139EA7A6280B529933050137388740A0A620E300C26414
        4F378F9800DA75E3E888855B12288688C3750837D5AA3C69E2C45319108DC788
        E88188F258860164C33C636282A8D9822CBD5DD8BC63E80FDF681835645AA28A
        5BBE6C4F5A8AA8178F9662D3ED010C2F56B3CE6D0C7307F2D063BC4189CC80A5
        EB8808E297C1C4C38D850C2802DE12186D6D88B6FD096C0D39EFBE003F74DC51
        C386DB03D84204D64E1332EA4E81BC9713C29D31AC8B7D48F48E8EACC812B84D
        A8B7B622DC78099AA956BCCCDFB30F3FF1649416A4986780F00C30F152469C31
        14E3290930550245CE08B7C9BE7108D806B20CDD71CE220E082020EB65EB88C2
        83CC6C7308504CB0CC0CE592C80CC812508ADD0C30003CE33421850CF0774982
        940802D098C29F5B02D5BB2D4DCD87F3D76C1D2B982AD8849681CDD44DAB6C47
        70CF18773618B2081336C3B2CB766E2A1E83344D46094A0BD372107A734B4B79
        5E306FB420A6BEFE99B6B0D9CA2F73E6DF0F880104D4DAE944A2A44FD97C1E1B
        87DF6363CA01F5D8B40EC7B009C00E01E4F9D07074CC9552E74AA557368F3E22
        C51E3B53A04A7A3746BFE83FB6A1BBFEF3FC2F34D5CE1760E2356B0000000049
        454E44AE426082}
    end
  end
  object BaMenu: TdxBarApplicationMenu
    BarManager = BmMenu
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 408
    Top = 112
    PixelsPerInch = 96
  end
  object TimerJanelas: TTimer
    Interval = 150
    OnTimer = TimerJanelasTimer
    Left = 288
    Top = 280
  end
end
