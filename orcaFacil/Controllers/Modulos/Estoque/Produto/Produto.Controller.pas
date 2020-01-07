unit Produto.Controller;

interface

uses Produto.Controller.interf, Tipos.Controller.interf, Produto.Model.interf;

type
  TProdutoController = class(TInterfacedObject, IProdutoController)
  private
    FProdutoModel: IProdutoModel;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IProdutoController;

    function Operacao(AValue: TTipoOperacao): IProdutoOperacoesController;
  end;

implementation

{ TProdutoController }

uses FacadeModel, ProdutoOperacoesIncluir.Controller;

constructor TProdutoController.Create;
begin
  FProdutoModel := TFacadeModel.New.ModulosFacadeModel.
    EstoqueFactoryModel.Produto;
end;

destructor TProdutoController.Destroy;
begin

  inherited;
end;

class function TProdutoController.New: IProdutoController;
begin
  result := Self.Create;
end;

function TProdutoController.Operacao(AValue: TTipoOperacao)
  : IProdutoOperacoesController;
begin
  case AValue of
    toIncluir:
      result := TProdutoOperacoesIncluirController.New.produtoController(Self)
        .produtoModel(FProdutoModel);

    toAlterar:
      ;

    toConsultar:
      ;

    toExcluir:
      ;

    toDuplicar:
      ;
  end;
end;

end.
