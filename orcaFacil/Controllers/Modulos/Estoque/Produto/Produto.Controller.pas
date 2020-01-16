unit Produto.Controller;

interface

uses Produto.Controller.interf, Tipos.Controller.interf, Produto.Model.interf,
  System.SysUtils, TESTPRODUTO.Entidade.Model;

type
  TProdutoController = class(TInterfacedObject, IProdutoController)
  private
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;
    FprodutoEncontrado: Boolean;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoController;

    function Incluir: IProdutoOperacaoIncluirController;
    function Alterar: IProdutoOperacaoAlterarController;
    function Excluir: IProdutoOperacaoExcluirController;
    function Duplicar: IProdutoOperacaoDuplicarController;

    function localizar(AValue: string): IProdutoController;

    function idProduto: string;
    function codigoSinapi: string;
    function descricao: string;
    function unidMedida: string;
    function origemPreco: string;
    function prMedio: string;
    function prMedioSinapi: string;
  end;

implementation

{ TProdutoController }

uses FacadeModel, ProdutoOperacaoIncluir.Controller,
  ProdutoOperacaoAlterar.Controller,
  ProdutoOperacaoDuplicar.Controller, ProdutoOperacaoExcluir.Controller;

function TProdutoController.Alterar: IProdutoOperacaoAlterarController;
begin
  Result := TProdutosOperacoesAlterarController.New.produtoController(Self)
    .produtoModel(FProdutoModel).produtoSelecionado(FRegistro);
end;

function TProdutoController.codigoSinapi: string;
begin
  Result := FRegistro.CODIGO_SINAPI;
end;

constructor TProdutoController.Create;
begin
  FProdutoModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.Produto;
end;

function TProdutoController.descricao: string;
begin
  Result := FRegistro.descricao;
end;

destructor TProdutoController.Destroy;
begin

  inherited;
end;

function TProdutoController.Duplicar: IProdutoOperacaoDuplicarController;
begin
  Result := TProdutosOperacoesDuplicarController.New.produtoController(Self)
    .produtoModel(FProdutoModel).produtoSelecionado(FRegistro);
end;

function TProdutoController.Excluir: IProdutoOperacaoExcluirController;
begin
  Result := TProdutoOperacaoExcluirController.New.produtoController(Self)
    .produtoModel(FProdutoModel).produtoSelecionado(FRegistro);
end;

function TProdutoController.idProduto: string;
begin
  Result := IntToStr(FRegistro.idProduto);
end;

function TProdutoController.Incluir: IProdutoOperacaoIncluirController;
begin
  Result := TProdutoOperacaoIncluirController.New.produtoController(Self)
    .produtoModel(FProdutoModel);
end;

function TProdutoController.localizar(AValue: string): IProdutoController;
begin
  Result := Self;
  FRegistro := FProdutoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DESCRICAO').Items[0];
end;

class function TProdutoController.New: IProdutoController;
begin
  Result := Self.Create;
end;

function TProdutoController.origemPreco: string;
begin
  Result := FRegistro.ORIGEM_PRECO;
end;

function TProdutoController.prMedio: string;
begin
  Result := CurrToStr(FRegistro.PRMEDIO);
end;

function TProdutoController.prMedioSinapi: string;
begin
  Result := CurrToStr(FRegistro.PRMEDIO_SINAPI);
end;

function TProdutoController.unidMedida: string;
begin
  Result := FRegistro.unidMedida;
end;

end.
