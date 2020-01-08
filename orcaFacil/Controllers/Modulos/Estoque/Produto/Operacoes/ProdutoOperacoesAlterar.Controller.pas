unit ProdutoOperacoesAlterar.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TProdutosOperacoesAlterarController = class(TInterfacedObject,
    IProdutoAlterarController)
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

    class function New: IProdutoAlterarController;

    function produtoController(AValue: IProdutoController)
      : IProdutoAlterarController;
    function produtoModel(AValue: IProdutoModel): IProdutoAlterarController;

    function localizar(AValue: string): IProdutoAlterarController;

    function codigoSinapi(AValue: Integer)
      : IProdutoAlterarController; overload;
    function codigoSinapi(AValue: string): IProdutoAlterarController;
      overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoAlterarController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoAlterarController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoAlterarController; overload;
    function prMedioSinapi(AValue: string)
      : IProdutoAlterarController; overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;

  end;

implementation

{ TProdutosOperacoesAlterarController }

function TProdutosOperacoesAlterarController.codigoSinapi: string;
begin
  Result := IntToStr(FRegistro.CODIGO_SINAPI);
end;

function TProdutosOperacoesAlterarController.codigoSinapi(AValue: string)
  : IProdutoAlterarController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

function TProdutosOperacoesAlterarController.codigoSinapi(AValue: Integer)
  : IProdutoAlterarController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

function TProdutosOperacoesAlterarController.&end: IProdutoController;
begin
  Result := FProdutoController;

  FProdutoModel.DAO.Modify(FRegistro);

  FRegistro.CODIGO_SINAPI := FCodigoSinapi;
  FRegistro.DESCRICAO := FDescricao;
  FRegistro.UNIDMEDIDA := FUnidMedida;
  FRegistro.PRMEDIO_SINAPI := FPrMedioSinap;

  FProdutoModel.DAO.Update(FRegistro);
end;

constructor TProdutosOperacoesAlterarController.Create;
begin

end;

function TProdutosOperacoesAlterarController.descricao: string;
begin
  Result := FRegistro.descricao;
end;

function TProdutosOperacoesAlterarController.descricao(AValue: string)
  : IProdutoAlterarController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TProdutosOperacoesAlterarController.Destroy;
begin

  inherited;
end;

function TProdutosOperacoesAlterarController.localizar(AValue: string)
  : IProdutoAlterarController;
begin
  Result := Self;
  FRegistro := FProdutoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DESCRICAO').Items[0];
end;

class function TProdutosOperacoesAlterarController.New
  : IProdutoAlterarController;
begin
  Result := Self.Create;
end;

function TProdutosOperacoesAlterarController.prMedioSinapi: string;
begin
  Result := CurrToStr(FRegistro.PRMEDIO_SINAPI);
end;

function TProdutosOperacoesAlterarController.prMedioSinapi(AValue: string)
  : IProdutoAlterarController;
begin
  Result := Self;
  FPrMedioSinap := StrToCurr(AValue);
end;

function TProdutosOperacoesAlterarController.prMedioSinapi(AValue: Currency)
  : IProdutoAlterarController;
begin
  Result := Self;
  FPrMedioSinap := AValue;
end;

function TProdutosOperacoesAlterarController.produtoController
  (AValue: IProdutoController): IProdutoAlterarController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutosOperacoesAlterarController.produtoModel(AValue: IProdutoModel)
  : IProdutoAlterarController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutosOperacoesAlterarController.unidMedida: string;
begin
  Result := FRegistro.unidMedida;
end;

function TProdutosOperacoesAlterarController.unidMedida(AValue: string)
  : IProdutoAlterarController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
