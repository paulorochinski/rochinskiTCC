unit ProdutoOperacaoIncluir.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf, system.SysUtils,
  TESTPRODUTO.Entidade.Model;

type
  TProdutoOperacaoIncluirController = class(TInterfacedObject,
    IProdutoOperacaoIncluirController)
  private
    FProdutoController: IProdutoController;
    FProdutoModel: IProdutoModel;

    FCodigoSinapi: string;
    FDescricao: string;
    FUnidMedida: string;
    FOrigemPreco: string;
    FPrMedioSinap: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoIncluirController;

    function produtoController(AValue: IProdutoController): IProdutoOperacaoIncluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoIncluirController;

    function codigoSinapi(AValue: string): IProdutoOperacaoIncluirController;

    function descricao(AValue: string): IProdutoOperacaoIncluirController;

    function unidMedida(AValue: string): IProdutoOperacaoIncluirController;

    function origemPreco(AValue: string): IProdutoOperacaoIncluirController;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoIncluirController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    function &executar: IProdutoController;
  end;

implementation

{ TProdutoOperacaoIncluirController }

function TProdutoOperacaoIncluirController.codigoSinapi(AValue: string)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

function TProdutoOperacaoIncluirController.&executar: IProdutoController;
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

constructor TProdutoOperacaoIncluirController.Create;
begin

end;

function TProdutoOperacaoIncluirController.descricao(AValue: string)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TProdutoOperacaoIncluirController.Destroy;
begin

  inherited;
end;

class function TProdutoOperacaoIncluirController.New
  : IProdutoOperacaoIncluirController;
begin
  Result := Self.Create;
end;

function TProdutoOperacaoIncluirController.origemPreco(
  AValue: string): IProdutoOperacaoIncluirController;
begin
   Result := Self;
   FOrigemPreco := AValue;
end;

function TProdutoOperacaoIncluirController.prMedioSinapi(AValue: string)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;

  if AValue = EmptyStr then
  AValue := '0';

  FPrMedioSinap := StrToCurr(AValue);
end;

function TProdutoOperacaoIncluirController.prMedioSinapi(AValue: Currency)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FPrMedioSinap := AValue;
end;

function TProdutoOperacaoIncluirController.produtoController
  (AValue: IProdutoController): IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutoOperacaoIncluirController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutoOperacaoIncluirController.unidMedida(AValue: string)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
