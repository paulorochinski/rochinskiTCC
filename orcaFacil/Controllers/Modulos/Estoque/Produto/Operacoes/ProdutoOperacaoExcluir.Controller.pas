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

    FCodigoSinapi: Integer;
    FDescricao: string;
    FUnidMedida: string;
    FPrMedioSinap: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoExcluirController;

    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoExcluirController;
    function produtoModel(AValue: IProdutoModel)
      : IProdutoOperacaoExcluirController;

    function localizar(AValue: string): IProdutoOperacaoExcluirController;

    function codigoSinapi: string;
    function descricao: string;
    function unidMedida: string;
    function prMedioSinapi: string;

    function &end: IProdutoController;

  end;

implementation

{ TProdutoOperacaoExcluirController }

function TProdutoOperacaoExcluirController.codigoSinapi: string;
begin
  Result := IntToStr(FRegistro.CODIGO_SINAPI);
end;

function TProdutoOperacaoExcluirController.&end: IProdutoController;
begin
  Result := FProdutoController;


  FProdutoModel.DAO.Delete(FRegistro);
end;

constructor TProdutoOperacaoExcluirController.Create;
begin

end;

function TProdutoOperacaoExcluirController.descricao: string;
begin
  Result := FRegistro.descricao;
end;

destructor TProdutoOperacaoExcluirController.Destroy;
begin

  inherited;
end;

function TProdutoOperacaoExcluirController.localizar(AValue: string)
  : IProdutoOperacaoExcluirController;
begin
  Result := Self;
  FRegistro := FProdutoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DESCRICAO').Items[0];
end;

class function TProdutoOperacaoExcluirController.New
  : IProdutoOperacaoExcluirController;
begin
  Result := Self.Create;
end;

function TProdutoOperacaoExcluirController.prMedioSinapi: string;
begin
  Result := CurrToStr(FRegistro.PRMEDIO_SINAPI);
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

function TProdutoOperacaoExcluirController.unidMedida: string;
begin
  Result := FRegistro.unidMedida;
end;

end.
