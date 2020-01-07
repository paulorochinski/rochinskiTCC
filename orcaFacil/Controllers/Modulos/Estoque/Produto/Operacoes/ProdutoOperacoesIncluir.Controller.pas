unit ProdutoOperacoesIncluir.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf, system.SysUtils,
  TESTPRODUTO.Entidade.Model;

type
  TProdutoOperacoesIncluirController = class(TInterfacedObject,
    IProdutoOperacoesController)
  private
    FProdutoController: IProdutoController;
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;

    FCodigo: string;
    FCodigoSinapi: Integer;
    FDescricao: string;
    FUnidMedida: string;
    FPrMedioSinap: Currency;
  public
    constructor Create;
    destructor destroy; override;

    class function New: IProdutoOperacoesController;

    function produtoController(AValue: IProdutoController)
      : IProdutoOperacoesController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacoesController;

    function localizar(AValue: string): IProdutoOperacoesController;

    function codigo(AValue: string): IProdutoOperacoesController;

    function codigoSinapi(AValue: Integer)
      : IProdutoOperacoesController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacoesController;
      overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoOperacoesController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoOperacoesController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoOperacoesController; overload;
    function prMedioSinapi(AValue: string)
      : IProdutoOperacoesController; overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;
  end;

implementation

{ TProdutoOperacoesIncluirController }

function TProdutoOperacoesIncluirController.codigo(AValue: string)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FCodigo := AValue;
end;

function TProdutoOperacoesIncluirController.codigoSinapi: string;
begin
  Result := IntToStr(FCodigoSinapi);
end;

function TProdutoOperacoesIncluirController.codigoSinapi(AValue: string)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

function TProdutoOperacoesIncluirController.codigoSinapi(AValue: Integer)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

function TProdutoOperacoesIncluirController.&end: IProdutoController;
begin
  Result := FProdutoController;

  FProdutoModel.Entidade(TTESTPRODUTO.Create);
  FProdutoModel.Entidade.CODIGO_SINAPI := FCodigoSinapi;
  FProdutoModel.Entidade.DESCRICAO := FDescricao;
  FProdutoModel.Entidade.UNIDMEDIDA := FUnidMedida;
  FProdutoModel.Entidade.PRMEDIO_SINAPI := FPrMedioSinap;
  FProdutoModel.DAO.Insert(FProdutoModel.Entidade);
end;

constructor TProdutoOperacoesIncluirController.Create;
begin

end;

function TProdutoOperacoesIncluirController.descricao: string;
begin
  Result := FDescricao;
end;

function TProdutoOperacoesIncluirController.descricao(AValue: string)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TProdutoOperacoesIncluirController.destroy;
begin

  inherited;
end;

function TProdutoOperacoesIncluirController.localizar(AValue: string)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FRegistro := FProdutoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DESCRIÇÃO').Items[0];
end;

class function TProdutoOperacoesIncluirController.New
  : IProdutoOperacoesController;
begin
  Result := Self.Create;
end;

function TProdutoOperacoesIncluirController.prMedioSinapi: string;
begin
  Result := CurrToStr(FPrMedioSinap);
end;

function TProdutoOperacoesIncluirController.prMedioSinapi(AValue: string)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FPrMedioSinap := StrToCurr(AValue);
end;

function TProdutoOperacoesIncluirController.prMedioSinapi(AValue: Currency)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FPrMedioSinap := AValue;
end;

function TProdutoOperacoesIncluirController.produtoController
  (AValue: IProdutoController): IProdutoOperacoesController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutoOperacoesIncluirController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutoOperacoesIncluirController.unidMedida: string;
begin
  Result := FUnidMedida;
end;

function TProdutoOperacoesIncluirController.unidMedida(AValue: string)
  : IProdutoOperacoesController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
