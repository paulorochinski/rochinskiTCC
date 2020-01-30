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
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Fornecedor.Controller.Interf;

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
    TbFornecedores: TcxTabSheet;
    DbDadosFornec: TcxGrid;
    VwDadosFornec: TcxGridDBTableView;
    LvDadosFornec: TcxGridLevel;
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
    DsFornecedores: TDataSource;
    VwDadosFornecIDFORNECEDOR: TcxGridDBColumn;
    VwDadosFornecNOMEFANTASIA: TcxGridDBColumn;
    CdFornecedores: TClientDataSet;
    CdFornecedoresCODIGO: TStringField;
    CdFornecedoresIDFORNECEDOR: TStringField;
    CdFornecedoresNOMEFANTASIA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtNovoItemClick(Sender: TObject);
    procedure BtExcluirItemClick(Sender: TObject);
    procedure BtNovoFornecClick(Sender: TObject);
    procedure BtExcluirFornecClick(Sender: TObject);
  private
    FOrcamento: IOrcamentoController;
    FProdutoController: IProdutoController;
    FFornecedorController: IFornecedorController;
    FRegistro: string;

    FItens: TList<TOrcamentoItens>;
    FFornecedores: TList<TOrcamentoFornecedores>;

    procedure exibirFornecedoresNaTela;
    procedure exibirItensNaTela;

    procedure salvarDados;
    procedure exibirDadosNaTela;
    procedure desabilitaCampos;

    procedure addItem(AValue: string); overload;
    procedure addItem(AValue: string; AQtde: Double); overload;

    procedure addForncedor(AValue: string);

    procedure carregarItens;
    procedure carregarFornecedores;
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

procedure TFEST0002CView.addForncedor(AValue: string);
begin
   if AValue = EmptyStr then Exit;

   FFornecedorController.localizar(AValue);


   if CdFornecedores.Locate('CODIGO', AValue, []) then begin
     TFacadeView
      .New
       .MensagensFactory
        .exibirMensagem(tmAlerta)
        .mensagem(Format('Já foi informado o fornecedor %s', [CdFornecedoresNOMEFANTASIA.AsString]))
       .exibir;

     Exit;
   end;

   CdFornecedores.Insert;
   CdFornecedoresCODIGO.AsString := AValue;
   CdFornecedoresIDFORNECEDOR.AsString := FFornecedorController.idFornecedor;
   CdFornecedoresNOMEFANTASIA.AsString := FFornecedorController.nomeFantasia;
   CdFornecedores.Post;
end;

procedure TFEST0002CView.addItem(AValue: string; AQtde: Double);
begin
   if AValue = EmptyStr then Exit;

   FProdutoController.localizar(AValue);

   CdItens.Insert;
   CdItensCODIGO.AsString := AValue;
   CdItensCODIGO_SINAPI.AsString := FProdutoController.codigoSinapi;
   CdItensDESCRICAO.AsString := FProdutoController.descricao;
   CdItensUNIDMEDIDA.AsString := FProdutoController.unidMedida;
   CdItensQTDE.AsFloat := AQtde;
   CdItens.Post;
end;

procedure TFEST0002CView.BtExcluirFornecClick(Sender: TObject);
begin
  inherited;
  CdFornecedores.Delete;
end;

procedure TFEST0002CView.BtExcluirItemClick(Sender: TObject);
begin
  inherited;
 CdItens.Delete;
end;

procedure TFEST0002CView.BtNovoFornecClick(Sender: TObject);
begin
  inherited;

  addForncedor(
     TFacadeView.New
      .ModulosFacadeView
       .PagarFactoryView
        .exibirTelaBusca(tbFornecedor)
        .exibir
        );
end;

procedure TFEST0002CView.BtNovoItemClick(Sender: TObject);
begin
  inherited;

  addItem(
    TFacadeView.New
     .ModulosFacadeView
     .EstoqueFactoryView
     .exibirTelaBusca(tbProduto)
     .exibir
     );
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

procedure TFEST0002CView.carregarFornecedores;
var VFornecedor: TOrcamentoFornecedores;
begin
  FOrcamento.removerTodosOsFornecedores;

  CdFornecedores.First;
  while not (CdFornecedores.Eof) do
  begin
    VFornecedor.codigo := CdFornecedoresCODIGO.AsString;
  
    FOrcamento.AddFornecedor(VFornecedor);

    CdFornecedores.Next;
  end;
end;

procedure TFEST0002CView.carregarItens;
var VItem: TOrcamentoItens;
begin
  FOrcamento.removerTodosOsItens;

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
begin
  if FOperacao = toIncluir then
    Exit;

  FOrcamento.localizar(FRegistro);

  TeIdProduto.Text := FOrcamento.idOrcamento;
  TeDescricao.Text := FOrcamento.descricao;

  {1} exibirFornecedoresNaTela;
  {2} exibirItensNaTela;
end;

procedure TFEST0002CView.exibirFornecedoresNaTela;
var
  I: Integer;
begin
 FFornecedores := FOrcamento.fornecedores;

 for I := 0 to Pred(FFornecedores.Count) do
   begin
     addForncedor(FFornecedores.Items[I].codigo);
   end;
end;

procedure TFEST0002CView.exibirItensNaTela;
var
  I: Integer;
begin
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

  FFornecedorController := TFacadeController.New.modulosFacadeController.
    pagarFactoryController.Fornecedor;

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
        carregarFornecedores;

        FOrcamento
         .Incluir
         .descricao(TeDescricao.Text)
         .finalizar;
      end;

    toAlterar:
      begin
        carregarItens;
        carregarFornecedores;

        FOrcamento
         .Alterar
         .descricao(TeDescricao.Text)
         .finalizar;
      end;

    toExcluir:
      begin
        FOrcamento
         .Excluir
         .finalizar;
      end;

    toDuplicar:
      begin
        carregarItens;
        carregarFornecedores;

        FOrcamento
         .Duplicar
         .descricao(TeDescricao.Text)
         .finalizar;
      end;
  end;
end;

end.
