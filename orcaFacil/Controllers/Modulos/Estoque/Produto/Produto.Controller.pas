unit Produto.Controller;

interface

uses Produto.Controller.interf, Tipos.Controller.interf, Produto.Model.interf;

type
  TProdutoController = class(TInterfacedObject, IProdutoController)
  private
    FProdutoModel: IProdutoModel;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoController;

    function Incluir: IProdutoOperacaoIncluirController;
    function Alterar: IProdutoOperacaoAlterarController;
    function Consultar: IProdutoOperacaoConsultarController;
    function Excluir: IProdutoOperacaoExcluirController;
    function Duplicar: IProdutoOperacaoDuplicarController;
  end;

implementation

{ TProdutoController }

uses FacadeModel, ProdutoOperacaoIncluir.Controller,
  ProdutoOperacaoAlterar.Controller, ProdutoOperacaoConsultar.Controller,
  ProdutoOperacaoDuplicar.Controller, ProdutoOperacaoExcluir.Controller;

function TProdutoController.Alterar: IProdutoOperacaoAlterarController;
begin
  Result := TProdutosOperacoesAlterarController.New.produtoController(Self)
    .produtoModel(FProdutoModel);
end;

function TProdutoController.Consultar: IProdutoOperacaoConsultarController;
begin
  Result := TProdutoOperacaoConsultarController.New.produtoController(Self)
    .produtoModel(FProdutoModel)
end;

constructor TProdutoController.Create;
begin
  FProdutoModel := TFacadeModel.New.ModulosFacadeModel.
    EstoqueFactoryModel.Produto;
end;

destructor TProdutoController.Destroy;
begin

  inherited;
end;

function TProdutoController.Duplicar: IProdutoOperacaoDuplicarController;
begin
  Result := TProdutosOperacoesDuplicarController.New.produtoController(Self)
    .produtoModel(FProdutoModel)
end;

function TProdutoController.Excluir: IProdutoOperacaoExcluirController;
begin
  Result := TProdutoOperacaoExcluirController.New.produtoController(Self)
    .produtoModel(FProdutoModel)
end;

function TProdutoController.Incluir: IProdutoOperacaoIncluirController;
begin
  Result := TProdutoOperacaoIncluirController.New.produtoController(Self)
    .produtoModel(FProdutoModel);
end;

class function TProdutoController.New: IProdutoController;
begin
  Result := Self.Create;
end;

end.
