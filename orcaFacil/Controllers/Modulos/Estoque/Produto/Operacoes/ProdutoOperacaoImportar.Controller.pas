unit ProdutoOperacaoImportar.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf, System.SysUtils,
  TESTPRODUTO.Entidade.Model;

type
  TProdutoOperacaoImportarController = class(TInterfacedObject,
    IProdutoOperacaoImportarController)
  private
    FProdutoController: IProdutoController;
    FProdutoModel: IProdutoModel;
    FProdutoExiste: Boolean;

    FRegistro: TTESTPRODUTO;

    FCodigoSinapi: Integer;
    FDescricao: string;
    FUnidMedida: string;
    FOrigemPreco: string;
    FPrMedioSinapi: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoImportarController;

    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoImportarController;
    function produtoModel(AValue: IProdutoModel)
      : IProdutoOperacaoImportarController;

    function produtoSelecionado(AValue: TTESTPRODUTO)
      : IProdutoOperacaoImportarController;

    function codigoSinapi(AValue: Integer)
      : IProdutoOperacaoImportarController; overload;
    function codigoSinapi(AValue: string)
      : IProdutoOperacaoImportarController; overload;

    function descricao(AValue: string)
      : IProdutoOperacaoImportarController; overload;

    function unidMedida(AValue: string)
      : IProdutoOperacaoImportarController; overload;

    function origemPreco(AValue: string)
      : IProdutoOperacaoImportarController; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoOperacaoImportarController; overload;
    function prMedioSinapi(AValue: string)
      : IProdutoOperacaoImportarController; overload;

    function &executar: IProdutoController;
  end;

implementation

{ TProdutoOperacaoImportarController }

function TProdutoOperacaoImportarController.codigoSinapi(AValue: Integer)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

function TProdutoOperacaoImportarController.codigoSinapi(AValue: string)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

constructor TProdutoOperacaoImportarController.Create;
begin

end;

function TProdutoOperacaoImportarController.descricao(AValue: string)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TProdutoOperacaoImportarController.Destroy;
begin

  inherited;
end;

function TProdutoOperacaoImportarController.executar: IProdutoController;
begin
  if FProdutoExiste then
  begin
    raise Exception.Create(FRegistro.CODIGO);
  end;


  FRegistro.Free;
  Self.Free;
end;

class function TProdutoOperacaoImportarController.New
  : IProdutoOperacaoImportarController;
begin
  Result := Self.Create;
end;

function TProdutoOperacaoImportarController.origemPreco(AValue: string)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FOrigemPreco := AValue;
end;

function TProdutoOperacaoImportarController.prMedioSinapi(AValue: string)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FPrMedioSinapi := StrToCurr(AValue);
end;

function TProdutoOperacaoImportarController.prMedioSinapi(AValue: Currency)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FPrMedioSinapi := AValue;
end;

function TProdutoOperacaoImportarController.produtoController
  (AValue: IProdutoController): IProdutoOperacaoImportarController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutoOperacaoImportarController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutoOperacaoImportarController.produtoSelecionado
  (AValue: TTESTPRODUTO): IProdutoOperacaoImportarController;
begin
  Result := Self;

  FRegistro := AValue;
  FProdutoExiste := not(AValue = nil);
end;

function TProdutoOperacaoImportarController.unidMedida(AValue: string)
  : IProdutoOperacaoImportarController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
