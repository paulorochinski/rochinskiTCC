unit ProdutoOperacaoConsultar.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TProdutoOperacaoConsultarController = class(TInterfacedObject,
    IProdutoOperacaoConsultarController)
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

    class function New: IProdutoOperacaoConsultarController;

    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoConsultarController;
    function produtoModel(AValue: IProdutoModel)
      : IProdutoOperacaoConsultarController;

    function localizar(AValue: string): IProdutoOperacaoConsultarController;

    function codigoSinapi: string;
    function descricao: string;
    function unidMedida: string;
    function prMedioSinapi: string;

    function &end: IProdutoController;

  end;

implementation

{ TProdutoOperacaoConsultarController }

function TProdutoOperacaoConsultarController.codigoSinapi: string;
begin
  Result := IntToStr(FRegistro.CODIGO_SINAPI);
end;

function TProdutoOperacaoConsultarController.&end: IProdutoController;
begin
  Result := FProdutoController;

end;

constructor TProdutoOperacaoConsultarController.Create;
begin

end;

function TProdutoOperacaoConsultarController.descricao: string;
begin
  Result := FRegistro.descricao;
end;

destructor TProdutoOperacaoConsultarController.Destroy;
begin

  inherited;
end;

function TProdutoOperacaoConsultarController.localizar(AValue: string)
  : IProdutoOperacaoConsultarController;
begin
  Result := Self;
  FRegistro := FProdutoModel.DAO.FindWhere('CODIGO=' + QuotedStr(AValue),
    'DESCRICAO').Items[0];
end;

class function TProdutoOperacaoConsultarController.New
  : IProdutoOperacaoConsultarController;
begin
  Result := Self.Create;
end;

function TProdutoOperacaoConsultarController.prMedioSinapi: string;
begin
  Result := CurrToStr(FRegistro.PRMEDIO_SINAPI);
end;

function TProdutoOperacaoConsultarController.produtoController
  (AValue: IProdutoController): IProdutoOperacaoConsultarController;
begin
  Result := Self;
  FProdutoController := AValue;
end;

function TProdutoOperacaoConsultarController.produtoModel(AValue: IProdutoModel)
  : IProdutoOperacaoConsultarController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TProdutoOperacaoConsultarController.unidMedida: string;
begin
  Result := FRegistro.unidMedida;
end;

end.
