unit Main.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxRibbonCustomizationForm, dxStatusBar, dxRibbonStatusBar, cxClasses,
  dxRibbon, dxBar, dxBarApplicationMenu;

type
  TFPrincipalView = class(TForm)
    BmMenu: TdxBarManager;
    BaMenu: TdxBarApplicationMenu;
    TbPrincipal: TdxRibbonTab;
    RbMenu: TdxRibbon;
    SbMenu: TdxRibbonStatusBar;
    MBPrincipal: TdxBar;
    LBProdutos: TdxBarLargeButton;
    LBFornecedores: TdxBarLargeButton;
    LBOrcamentos: TdxBarLargeButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalView: TFPrincipalView;

implementation

{$R *.dfm}

end.
