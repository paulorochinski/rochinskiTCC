unit ProdutoOperacoesIncluir.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf, system.SysUtils,
  TESTPRODUTO.Entidade.Model;

type
  TProdutoOperacoesIncluirController = class(TInterfacedObject,
    IProdutoIncluirController)
  private
    FProdutoController: IProdutoController;
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;

    FCodigoSinapi: Integer;
    FDescricao: string;
    FUnidMedida: string;
    FPrMedioSinap: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoIncluirController;

    function produtoController(AValue: IProdutoController)
      : IProdutoIncluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoIncluirController;

    function codigoSinapi(AValue: Integer)
      : IProdutoIncluirController; overload;
    function codigoSinapi(AValue: string): IProdutoIncluirController;
      overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoIncluirController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoIncluirController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoIncluirController; overload;
    function prMedioSinapi(AValue: string)
      : IProdutoIncluirController; overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;
  end;

implementation

{ TProdutoOperacoesIncluirController }

function TProdutoOperacoesIncluirController.codigoSinapi: string;
begin
  Result := IntToStr(FRegistro.CODIGO_SINAPI);
end;

function TProdutoOperacoesIncluirController.codigoSinapi(AValue: string)
  : IProdutoIncluirController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

function TProdutoOperacoesIncluirController.codigoSinapi(AValue: Integer)
  : IProdutoIncluirController;
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
  Result := FRegistro.DESCRICAO;
end;

function TProdutoOperacoesIncluirController.descricao(AValue: string)
  : IProdutoIncluirController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TProdutoOperacoesIncluirController.Destroy;
begin

  inherited;
end;

class function TProdutoOperacoesIncluirController.New
  : IProdutoIncluirController;
begin
  Result := Self.Create;
end;

function TProdutoOperacoesIncluirController.prMedioSinapi: string;
begin
  Result := CurrToStr(FRegistro.PRMEDIO_SINAPI);
end;

function TProdutoOperacoesIncluirController.prMedioSinapi(AValue: string)
  : IProdutoIncluirController;
begin
  Result := Self;
  FPrMedioSinap := StrToCurr(AValue);
end;

function TProdutoOperacoesIncluirController.prMedioSinapi(AValue: Currency)
  : IProdutoIncluirController;
begin
  Result := Self;
  FPrMedioSinap := AValue;
end;

function TProdutoOperacoesIncluirController.produtoController
  (AValue: IProdutoController): IProdutoIncluirController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutoOperacoesIncluirController.produtoModel(AValue: IProdutoModel)
  : IProdutoIncluirController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutoOperacoesIncluirController.unidMedida: string;
begin
  Result := FRegistro.UNIDMEDIDA;
end;

function TProdutoOperacoesIncluirController.unidMedida(AValue: string)
  : IProdutoIncluirController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
