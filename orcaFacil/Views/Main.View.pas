unit Main.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxRibbonCustomizationForm, dxStatusBar, dxRibbonStatusBar, cxClasses,
  dxRibbon, dxBar, dxBarApplicationMenu, Vcl.ExtCtrls;

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
    TimerJanelas: TTimer;
    MbAtalhos: TdxBar;
    procedure TimerJanelasTimer(Sender: TObject);
    procedure LBProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalView: TFPrincipalView;

implementation

{$R *.dfm}

uses FacadeView, Tipos.Controller.Interf;

procedure TFPrincipalView.LBProdutosClick(Sender: TObject);
begin
  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaListagem(tlProduto)
       .executar;
end;

procedure TFPrincipalView.TimerJanelasTimer(Sender: TObject);
begin
  if Self.MDIChildCount <= 0 then
    RbMenu.ShowTabGroups := True
  else
    RbMenu.ShowTabGroups := False
end;

end.
