unit ProdutoOperacaoAlterar.Controller;

interface

uses Produto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TProdutosOperacoesAlterarController = class(TInterfacedObject,
    IProdutoOperacaoAlterarController)
  private
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;

    FCodigoSinapi: string;
    FDescricao: string;
    FUnidMedida: string;
    FOrigemPreco: string;
    FPrMedio: Currency;
    FPrMedioSinap: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoOperacaoAlterarController;

    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoAlterarController;

    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoAlterarController;

    function codigoSinapi(AValue: string): IProdutoOperacaoAlterarController;

    function descricao(AValue: string): IProdutoOperacaoAlterarController;

    function unidMedida(AValue: string): IProdutoOperacaoAlterarController;

    function origemPreco(AValue: string): IProdutoOperacaoAlterarController;

    function prMedio(AValue: Currency): IProdutoOperacaoAlterarController; overload;
    function prMedio(AValue: string): IProdutoOperacaoAlterarController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoAlterarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;

    procedure finalizar;

  end;

implementation

{ TProdutosOperacoesAlterarController }

function TProdutosOperacoesAlterarController.codigoSinapi(AValue: string)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

procedure TProdutosOperacoesAlterarController.finalizar;
begin
  FProdutoModel.DAO.Modify(FRegistro);

  FRegistro.CODIGO_SINAPI := FCodigoSinapi;
  FRegistro.DESCRICAO := FDescricao;
  FRegistro.UNIDMEDIDA := FUnidMedida;
  FRegistro.ORIGEM_PRECO := FOrigemPreco;
  FRegistro.PRMEDIO := FPrMedio;
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

function TProdutosOperacoesAlterarController.prMedio(
  AValue: string): IProdutoOperacaoAlterarController;
begin
  Result := Self;

  if AValue = EmptyStr then
  AValue := '0';

  FPrMedio := StrToCurr(AValue);
end;

function TProdutosOperacoesAlterarController.prMedio(
  AValue: Currency): IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FPrMedio := AValue;
end;

function TProdutosOperacoesAlterarController.prMedioSinapi(AValue: string)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;

  if AValue = EmptyStr then
  AValue := '0';

  FPrMedioSinap := StrToCurr(AValue);
end;

function TProdutosOperacoesAlterarController.prMedioSinapi(AValue: Currency)
  : IProdutoOperacaoAlterarController;
begin
  Result := Self;
  FPrMedioSinap := AValue;
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
