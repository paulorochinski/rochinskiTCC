unit ProdutoOperacaoExcluir.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TProdutoOperacaoExcluirController = class(TInterfacedObject,
    IProdutoOperacaoExcluirController)
  private
    FProdutoController: IProdutoController;
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoExcluirController;

    function produtoController(AValue: IProdutoController): IProdutoOperacaoExcluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoExcluirController;

    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoExcluirController;

    function &executar: IProdutoController;

  end;

implementation

{ TProdutoOperacaoExcluirController }


function TProdutoOperacaoExcluirController.&executar: IProdutoController;
begin
  Result := FProdutoController;

  FProdutoModel.DAO.Delete(FRegistro);
end;

constructor TProdutoOperacaoExcluirController.Create;
begin

end;

destructor TProdutoOperacaoExcluirController.Destroy;
begin

  inherited;
end;

class function TProdutoOperacaoExcluirController.New
  : IProdutoOperacaoExcluirController;
begin
  Result := Self.Create;
end;


function TProdutoOperacaoExcluirController.produtoController
  (AValue: IProdutoController): IProdutoOperacaoExcluirController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutoOperacaoExcluirController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacaoExcluirController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;


function TProdutoOperacaoExcluirController.produtoSelecionado(
  AValue: TTESTPRODUTO): IProdutoOperacaoExcluirController;
begin
  Result := Self;
  FRegistro := AValue;
end;

end.
