unit ProdutoOperacaoAlterar.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TProdutosOperacoesAlterarController = class(TInterfacedObject,
    IProdutoOperacaoAlterarController)
  private
    FProdutoController: IProdutoController;
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;

    FCodigoSinapi: Integer;
    FDescricao: string;
    FUnidMedida: string;
    FOrigemPreco: string;
    FPrMedioSinap: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoAlterarController;

    function produtoController(AValue: IProdutoController): IProdutoOperacaoAlterarController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoAlterarController;

    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoAlterarController;

    function codigoSinapi(AValue: Integer): IProdutoOperacaoAlterarController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;

    function descricao(AValue: string): IProdutoOperacaoAlterarController; overload;

    function unidMedida(AValue: string): IProdutoOperacaoAlterarController; overload;

    function origemPreco(AValue: string): IProdutoOperacaoAlterarController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoAlterarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;

    function &executar: IProdutoController;

  end;

implementation

{ TProdutosOperacoesAlterarController }

function TProdutosOperacoesAlterarController.codigoSinapi(AValue: string)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

function TProdutosOperacoesAlterarController.codigoSinapi(AValue: Integer)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

function TProdutosOperacoesAlterarController.&executar: IProdutoController;
begin
  Result := FProdutoController;

  FProdutoModel.DAO.Modify(FRegistro);

  FRegistro.CODIGO_SINAPI := FCodigoSinapi;
  FRegistro.DESCRICAO := FDescricao;
  FRegistro.UNIDMEDIDA := FUnidMedida;
  FRegistro.ORIGEM_PRECO := FOrigemPreco;
  FRegistro.PRMEDIO_SINAPI := FPrMedioSinap;

  FProdutoModel.DAO.Update(FRegistro);
end;

constructor TProdutosOperacoesAlterarController.Create;
begin

end;

function TProdutosOperacoesAlterarController.descricao(AValue: string)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TProdutosOperacoesAlterarController.Destroy;
begin

  inherited;
end;

class function TProdutosOperacoesAlterarController.New
  : IProdutoOperacaoAlterarController;
begin
  Result := Self.Create;
end;

function TProdutosOperacoesAlterarController.origemPreco(
  AValue: string): IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FOrigemPreco := AValue;
end;

function TProdutosOperacoesAlterarController.prMedioSinapi(AValue: string)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FPrMedioSinap := StrToCurr(AValue);
end;

function TProdutosOperacoesAlterarController.prMedioSinapi(AValue: Currency)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FPrMedioSinap := AValue;
end;

function TProdutosOperacoesAlterarController.produtoController
  (AValue: IProdutoController): IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutosOperacoesAlterarController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutosOperacoesAlterarController.produtoSelecionado(
  AValue: TTESTPRODUTO): IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FRegistro := AValue;
end;

function TProdutosOperacoesAlterarController.unidMedida(AValue: string)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
