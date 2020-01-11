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

    FCodigoSinapi: Integer;
    FDescricao: string;
    FUnidMedida: string;
    FPrMedioSinap: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoIncluirController;

    function produtoController(AValue: IProdutoController): IProdutoOperacaoIncluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoIncluirController;

    function codigoSinapi(AValue: Integer): IProdutoOperacaoIncluirController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    function descricao(AValue: string): IProdutoOperacaoIncluirController; overload;

    function unidMedida(AValue: string): IProdutoOperacaoIncluirController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoIncluirController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    function &end: IProdutoController;
  end;

implementation

{ TProdutoOperacaoIncluirController }

function TProdutoOperacaoIncluirController.codigoSinapi(AValue: string)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

function TProdutoOperacaoIncluirController.codigoSinapi(AValue: Integer)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

function TProdutoOperacaoIncluirController.&end: IProdutoController;
begin
  Result := FProdutoController;

  FProdutoModel.Entidade(TTESTPRODUTO.Create);

  FProdutoModel.Entidade.CODIGO_SINAPI := FCodigoSinapi;
  FProdutoModel.Entidade.DESCRICAO := FDescricao;
  FProdutoModel.Entidade.UNIDMEDIDA := FUnidMedida;
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

function TProdutoOperacaoIncluirController.prMedioSinapi(AValue: string)
  : IProdutoOperacaoIncluirController;
begin
  Result := Self;
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
