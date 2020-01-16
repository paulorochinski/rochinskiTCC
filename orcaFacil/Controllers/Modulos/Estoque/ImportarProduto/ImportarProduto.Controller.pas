unit ImportarProduto.Controller;

interface

uses ImportarProduto.Controller.interf, TESTPRODUTO.Entidade.Model,
  Produto.Model.interf, System.SysUtils;

type
  TImportarProdutoController = class(TInterfacedObject,
    IImportarProdutoController)
  private
    FProdutoModel: IProdutoModel;
    FRegistro: TTESTPRODUTO;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IImportarProdutoController;

    function localizar(AValue: Integer): IImportarProdutoController;
    function produtoSelecionado: TTESTPRODUTO;

    function Importar: IImportarProdutoOperacaoController;
  end;

implementation

{ TImportarProdutoController }

uses FacadeModel, ImportarProdutoOperacao.Controller;

constructor TImportarProdutoController.Create;
begin
  FProdutoModel := TFacadeModel.New.ModulosFacadeModel.
    estoqueFactoryModel.Produto;
end;

destructor TImportarProdutoController.Destroy;
begin

  inherited;
end;

function TImportarProdutoController.Importar
  : IImportarProdutoOperacaoController;
begin
  Result := TImportarProdutoOperacaoController.New.importarProdutoController
    (Self).produtoModel(FProdutoModel)
end;

function TImportarProdutoController.localizar(AValue: Integer)
  : IImportarProdutoController;
begin
  Result := Self;

  try
    FRegistro := FProdutoModel.DAO.FindWhere('CODIGO_SINAPI=' +
      QuotedStr(IntToStr(AValue)), 'DESCRICAO').Items[0];

  except
    on E: Exception do
  end;
end;

class function TImportarProdutoController.New: IImportarProdutoController;
begin
  Result := Self.Create;
end;

function TImportarProdutoController.produtoSelecionado: TTESTPRODUTO;
begin
  Result := FRegistro;
end;

end.
