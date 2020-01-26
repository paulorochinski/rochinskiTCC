unit EST0002C.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBase.View, cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  cxControls, cxContainer,
  cxEdit, dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons,
  cxMemo, cxTextEdit, Generics.Collections,
  dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Base.View.Interf, Tipos.Controller.Interf,
  Orcamento.Controller.Interf, Produto.Controller.interf, Datasnap.DBClient,
  TESTORCAMENTOITENS.Entidade.Model, ormbr.container.DataSet.interfaces,
  ormbr.container.fdmemtable, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt;

type
  TFEST0002CView = class(TFCadastroView, IBaseCadastroView)
    TeIdProduto: TcxTextEdit;
    cxLabel6: TcxLabel;
    TeDescricao: TcxMemo;
    cxLabel3: TcxLabel;
    cxPageControl1: TcxPageControl;
    TbItens: TcxTabSheet;
    PnCrud: TPanel;
    BtExcluirItem: TcxButton;
    BtNovoItem: TcxButton;
    DbDados: TcxGrid;
    VwDados: TcxGridDBTableView;
    LvDados: TcxGridLevel;
    TbFornecedor: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel6: TPanel;
    BtExcluirFornec: TcxButton;
    BtNovoFornec: TcxButton;
    DsItens: TDataSource;
    VwDadosDESCRICAO: TcxGridDBColumn;
    VwDadosUNIDMEDIDA: TcxGridDBColumn;
    VwDadosQTDE: TcxGridDBColumn;
    CdItens: TClientDataSet;
    CdItensCODIGO: TStringField;
    CdItensDESCRICAO: TStringField;
    CdItensUNIDMEDIDA: TStringField;
    CdItensQTDE: TFloatField;
    CdItensCODIGO_SINAPI: TStringField;
    VwDadosCODIGO_SINAPI: TcxGridDBColumn;
    StGrid: TcxStyleRepository;
    StHeader: TcxStyle;
    StBackground: TcxStyle;
    StContentOdd: TcxStyle;
    StContentEven: TcxStyle;
    StSelection: TcxStyle;
    StInactive: TcxStyle;
    PnCampos: TPanel;
    GrdItens: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtNovoItemClick(Sender: TObject);
  private
    FContainer: IContainerDataSet<TTESTORCAMENTOITENS>;
    FOrcamento: IOrcamentoController;
    FProdutoController: IProdutoController;
    FRegistro: string;
    FItens: TList<TOrcamentoItens>;

    procedure salvarDados;
    procedure exibirDadosNaTela;
    procedure desabilitaCampos;

    procedure addItem(AValue: string); overload;
    procedure addItem(AValue: string; AQtde: Double); overload;
    procedure carregarItens;
  public
    class function New: IBaseCadastroView;

    function operacao(AValue: TTipoOperacao): IBaseCadastroView;
    function registroSelecionado(AValue: string): IBaseCadastroView;
    procedure &executar;
  end;

var
  FEST0002CView: TFEST0002CView;

implementation

{$R *.dfm}

uses FacadeController, FacadeView;
{ TFEST0002CView }

procedure TFEST0002CView.addItem(AValue: string);
begin
   if AValue = EmptyStr then Exit;

   FProdutoController.localizar(AValue);


   if CdItens.Locate('CODIGO', AValue, []) then begin
     CdItens.Edit;
     CdItensQTDE.AsFloat := CdItensQTDE.AsFloat + 1;
     CdItens.Post;

     Exit;
   end;

   CdItens.Insert;
   CdItensCODIGO.AsString := AValue;
   CdItensCODIGO_SINAPI.AsString := FProdutoController.codigoSinapi;
   CdItensDESCRICAO.AsString := FProdutoController.descricao;
   CdItensUNIDMEDIDA.AsString := FProdutoController.unidMedida;
   CdItensQTDE.AsFloat := 1;
   CdItens.Post;
end;

procedure TFEST0002CView.addItem(AValue: string; AQtde: Double);
begin
   if AValue = EmptyStr then Exit;

   FProdutoController.localizar(AValue);


   if CdItens.Locate('CODIGO', AValue, []) then begin
     CdItens.Edit;
     CdItensQTDE.AsFloat := CdItensQTDE.AsFloat + 1;
     CdItens.Post;

     Exit;
   end;

   CdItens.Insert;
   CdItensCODIGO.AsString := AValue;
   CdItensCODIGO_SINAPI.AsString := FProdutoController.codigoSinapi;
   CdItensDESCRICAO.AsString := FProdutoController.descricao;
   CdItensUNIDMEDIDA.AsString := FProdutoController.unidMedida;
   CdItensQTDE.AsFloat := AQtde;
   CdItens.Post;
end;

procedure TFEST0002CView.BtNovoItemClick(Sender: TObject);
begin
  inherited;

  addItem(TFacadeView.New.ModulosFacadeView.EstoqueFactoryView.
    exibirTelaBusca(tbProduto).exibir);

end;

procedure TFEST0002CView.BtSalvarClick(Sender: TObject);
begin
  salvarDados;
  inherited;
end;

procedure TFEST0002CView.desabilitaCampos;
begin
  if FOperacao in [toConsultar, toExcluir] then
  begin
    TeIdProduto.Enabled := False;
    TeDescricao.Enabled := False;

    BtNovoItem.Enabled := False;
    BtExcluirItem.Enabled := False;

    BtNovoFornec.Enabled := False;
    BtExcluirFornec.Enabled := False;

    VwDados.OptionsData.Editing := False;
    VwDados.OptionsSelection.CellSelect := false;
  end;
end;

procedure TFEST0002CView.executar;
begin
  exibirDadosNaTela;
  desabilitaCampos;
  exibirTituloOperacao(FOperacao);

  ShowModal;
end;

procedure TFEST0002CView.carregarItens;
var VItem: TOrcamentoItens;
begin
  FOrcamento.removeAllItens;

  CdItens.First;
  while not (CdItens.Eof) do
  begin
    VItem.codigo := CdItensCODIGO.AsString;
    VItem.qtde   := CdItensQTDE.AsFloat;

    FOrcamento.AddItem(VItem);

    CdItens.Next;
  end;
end;

procedure TFEST0002CView.exibirDadosNaTela;
var
  I: Integer;
begin
  if FOperacao = toIncluir then
    Exit;

  FOrcamento.localizar(FRegistro);

  TeIdProduto.Text := FOrcamento.idOrcamento;
  TeDescricao.Text := FOrcamento.descricao;

  FItens := FOrcamento.itens;

  for I := 0 to pred(FItens.Count) do
    begin
      addItem(FItens[I].codigo, FItens[I].qtde);
    end;
end;

procedure TFEST0002CView.FormCreate(Sender: TObject);
begin
  inherited;
  FOrcamento := TFacadeController.New.modulosFacadeController.
    estoqueFactoryController.Orcamento;

  FProdutoController := TFacadeController.New.modulosFacadeController.
    estoqueFactoryController.Produto;


    Self.Width := Screen.Width - 100;
    Self.Height := Screen.Height - 100;
end;

class function TFEST0002CView.New: IBaseCadastroView;
begin
  Result := Self.Create(nil);
end;

function TFEST0002CView.operacao(AValue: TTipoOperacao): IBaseCadastroView;
begin
  Result := Self;
  FOperacao := AValue;
end;

function TFEST0002CView.registroSelecionado(AValue: string): IBaseCadastroView;
begin
  Result := Self;
  FRegistro := AValue;
end;

procedure TFEST0002CView.salvarDados;
begin
  case FOperacao of
    toIncluir:
      begin
        carregarItens;

        FOrcamento
         .Incluir
         .descricao(TeDescricao.Text)
         .finalizar;
      end;

    toAlterar:
      begin

      end;

    toExcluir:
      begin

      end;

    toDuplicar:
      begin

      end;
  end;
end;

end.
