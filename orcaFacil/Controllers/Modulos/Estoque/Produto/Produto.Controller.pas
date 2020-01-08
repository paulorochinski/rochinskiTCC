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

    function Incluir: IProdutoIncluirController;
    function Alterar: IProdutoAlterarController;
    function Excluir: IProdutoExcluirController;
  end;

implementation

{ TProdutoController }

uses FacadeModel, ProdutoOperacoesIncluir.Controller,
  ProdutoOperacoesAlterar.Controller;

function TProdutoController.Alterar: IProdutoAlterarController;
begin
  Result := TProdutosOperacoesAlterarController.New.produtoController(Self)
    .produtoModel(FProdutoModel);
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

function TProdutoController.Excluir: IProdutoExcluirController;
begin

end;

function TProdutoController.Incluir: IProdutoIncluirController;
begin
  Result := TProdutoOperacoesIncluirController.New.produtoController(Self)
    .produtoModel(FProdutoModel);
end;

class function TProdutoController.New: IProdutoController;
begin
  Result := Self.Create;
end;

end.
