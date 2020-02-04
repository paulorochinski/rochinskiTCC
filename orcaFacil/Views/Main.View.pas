unit Main.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxRibbonCustomizationForm, dxStatusBar, dxRibbonStatusBar, cxClasses,
  dxRibbon, dxBar, dxBarApplicationMenu, Vcl.ExtCtrls, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  dxSkinsForm, cxContainer, cxEdit, cxLabel, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinMetropolisDark, dxSkinVisualStudio2013Dark, dxSkinBlack,
  dxSkinSilver, dxSkinVS2010, dxSkinWhiteprint;

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
    LbCotacao: TdxBarLargeButton;
    LbAnaliseCotacao: TdxBarLargeButton;
    TbParametros: TdxRibbonTab;
    BmMenuBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure TimerJanelasTimer(Sender: TObject);
    procedure LBProdutosClick(Sender: TObject);
    procedure LBFornecedoresClick(Sender: TObject);
    procedure LBOrcamentosClick(Sender: TObject);
    procedure LbCotacaoClick(Sender: TObject);
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

procedure TFPrincipalView.LbCotacaoClick(Sender: TObject);
begin
  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaListagem(tlCotacao)
       .executar;
end;

procedure TFPrincipalView.LBFornecedoresClick(Sender: TObject);
begin
  TFacadeView.New
    .ModulosFacadeView
     .PagarFactoryView
      .exibirTelaListagem(tlFornecedor)
       .executar;
end;

procedure TFPrincipalView.LBOrcamentosClick(Sender: TObject);
begin
  TFacadeView.New
    .ModulosFacadeView
     .EstoqueFactoryView
      .exibirTelaListagem(tlOrcamento)
       .executar;
end;

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
