unit ProdutoOperacaoDuplicar.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TProdutosOperacoesDuplicarController = class(TInterfacedObject,
    IProdutoOperacaoDuplicarController)
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

    class function New: IProdutoOperacaoDuplicarController;

    function produtoController(AValue: IProdutoController): IProdutoOperacaoDuplicarController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoDuplicarController;

    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoDuplicarController;

    function codigoSinapi(AValue: Integer): IProdutoOperacaoDuplicarController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function descricao(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function unidMedida(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function origemPreco(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoDuplicarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function &executar: IProdutoController;

  end;

implementation

{ TProdutosOperacoesDuplicarController }

function TProdutosOperacoesDuplicarController.codigoSinapi(AValue: string)
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

function TProdutosOperacoesDuplicarController.codigoSinapi(AValue: Integer)
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

function TProdutosOperacoesDuplicarController.&executar: IProdutoController;
begin
  Result := FProdutoController;

  FProdutoModel.Entidade(TTESTPRODUTO.Create);

  FProdutoModel.Entidade.CODIGO_SINAPI := FCodigoSinapi;
  FProdutoModel.Entidade.DESCRICAO := FDescricao;
  FProdutoModel.Entidade.UNIDMEDIDA := FUnidMedida;
  FProdutoModel.Entidade.ORIGEM_PRECO := FOrigemPreco;
  FProdutoModel.Entidade.PRMEDIO_SINAPI := FPrMedioSinap;

  FProdutoModel.DAO.Insert(FProdutoModel.Entidade);
end;

constructor TProdutosOperacoesDuplicarController.Create;
begin

end;

function TProdutosOperacoesDuplicarController.descricao(AValue: string)
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TProdutosOperacoesDuplicarController.Destroy;
begin

  inherited;
end;

class function TProdutosOperacoesDuplicarController.New
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self.Create;
end;

function TProdutosOperacoesDuplicarController.origemPreco(
  AValue: string): IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FOrigemPreco := AValue;
end;

function TProdutosOperacoesDuplicarController.prMedioSinapi(AValue: string)
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FPrMedioSinap := StrToCurr(AValue);
end;

function TProdutosOperacoesDuplicarController.prMedioSinapi(AValue: Currency)
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FPrMedioSinap := AValue;
end;

function TProdutosOperacoesDuplicarController.produtoController
  (AValue: IProdutoController): IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutosOperacoesDuplicarController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutosOperacoesDuplicarController.produtoSelecionado(
  AValue: TTESTPRODUTO): IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FRegistro := AValue;
end;

function TProdutosOperacoesDuplicarController.unidMedida(AValue: string)
  : IProdutoOperacaoDuplicarController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
