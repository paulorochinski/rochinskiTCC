unit ImportarProdutoOperacao.Controller;

interface

uses ImportarProduto.Controller.interf, Produto.Model.interf,
  TESTPRODUTO.Entidade.Model, System.SysUtils;

type
  TImportarProdutoOperacaoController = class(TInterfacedObject,
    IImportarProdutoOperacaoController)
  private
    FRegistro: TTESTPRODUTO;
    FImportarProdutoController: IImportarProdutoController;
    FProdutoModel: IProdutoModel;
    FProdutoEncontrado: Boolean;

    FCodigoSinapi: Integer;
    FDescricao: string;
    FUnidMedida: string;
    FOrigemPreco: string;
    FPrMedioSinapi: Currency;

    procedure atualizarDadosDoProduto;
    procedure salvarDadosNovoProduto;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IImportarProdutoOperacaoController;

    function importarProdutoController(AValue: IImportarProdutoController)
      : IImportarProdutoOperacaoController;
    function produtoModel(AValue: IProdutoModel)
      : IImportarProdutoOperacaoController;

    function produtoSelecionado(AValue: TTESTPRODUTO)
      : IImportarProdutoOperacaoController;

    function codigoSinapi(AValue: Integer)
      : IImportarProdutoOperacaoController; overload;
    function codigoSinapi(AValue: string)
      : IImportarProdutoOperacaoController; overload;

    function descricao(AValue: string)
      : IImportarProdutoOperacaoController; overload;

    function unidMedida(AValue: string)
      : IImportarProdutoOperacaoController; overload;

    function origemPreco(AValue: string)
      : IImportarProdutoOperacaoController; overload;

    function prMedioSinapi(AValue: Currency)
      : IImportarProdutoOperacaoController; overload;
    function prMedioSinapi(AValue: string)
      : IImportarProdutoOperacaoController; overload;

    function &executar: IImportarProdutoController;
  end;

implementation

{ TImportarProdutoOperacaoController }

procedure TImportarProdutoOperacaoController.atualizarDadosDoProduto;
begin
  FProdutoModel.DAO.Modify(FRegistro);

  FRegistro.CODIGO_SINAPI := FCodigoSinapi;
  FRegistro.DESCRICAO := FDescricao;
  FRegistro.UNIDMEDIDA := FUnidMedida;
  FRegistro.ORIGEM_PRECO := FOrigemPreco;
  FRegistro.PRMEDIO_SINAPI := FPrMedioSinapi;

  FProdutoModel.DAO.Update(FRegistro);
end;

function TImportarProdutoOperacaoController.codigoSinapi(AValue: string)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FCodigoSinapi := StrToInt(AValue);
end;

function TImportarProdutoOperacaoController.codigoSinapi(AValue: Integer)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FCodigoSinapi := AValue;
end;

constructor TImportarProdutoOperacaoController.Create;
begin

end;

function TImportarProdutoOperacaoController.descricao(AValue: string)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FDescricao := AValue;
end;

destructor TImportarProdutoOperacaoController.Destroy;
begin

  inherited;
end;

function TImportarProdutoOperacaoController.executar
  : IImportarProdutoController;
begin
  if FProdutoEncontrado then
    atualizarDadosDoProduto
  else
    salvarDadosNovoProduto;

end;

class function TImportarProdutoOperacaoController.New
  : IImportarProdutoOperacaoController;
begin
  Result := Self.Create;
end;

function TImportarProdutoOperacaoController.origemPreco(AValue: string)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FOrigemPreco := AValue;
end;

function TImportarProdutoOperacaoController.prMedioSinapi(AValue: string)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FPrMedioSinapi := StrToCurr(AValue);
end;

function TImportarProdutoOperacaoController.prMedioSinapi(AValue: Currency)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FPrMedioSinapi := AValue;
end;

function TImportarProdutoOperacaoController.importarProdutoController
  (AValue: IImportarProdutoController): IImportarProdutoOperacaoController;
begin
  Result := Self;
  FImportarProdutoController := AValue;
end;

function TImportarProdutoOperacaoController.produtoModel(AValue: IProdutoModel)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FProdutoModel := AValue;
end;

function TImportarProdutoOperacaoController.produtoSelecionado
  (AValue: TTESTPRODUTO): IImportarProdutoOperacaoController;
begin
  Result := Self;
  FRegistro := AValue;
  FProdutoEncontrado := not(AValue = nil);
end;

procedure TImportarProdutoOperacaoController.salvarDadosNovoProduto;
begin
  FProdutoModel.Entidade(TTESTPRODUTO.Create);

  FProdutoModel.Entidade.CODIGO_SINAPI := FCodigoSinapi;
  FProdutoModel.Entidade.DESCRICAO := FDescricao;
  FProdutoModel.Entidade.UNIDMEDIDA := FUnidMedida;
  FProdutoModel.Entidade.ORIGEM_PRECO := FOrigemPreco;
  FProdutoModel.Entidade.PRMEDIO_SINAPI := FPrMedioSinapi;

  FProdutoModel.DAO.Insert(FProdutoModel.Entidade);
end;

function TImportarProdutoOperacaoController.unidMedida(AValue: string)
  : IImportarProdutoOperacaoController;
begin
  Result := Self;
  FUnidMedida := AValue;
end;

end.
