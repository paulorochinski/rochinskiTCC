unit EstoqueFactory.Controller;

interface

uses EstoqueFactory.Controller.interf, Produto.Controller.interf,
  ImportarProduto.Controller.interf, Orcamento.Controller.interf;

type
  TEstoqueFactory = class(TInterfacedObject, IEstoqueFactoryController)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEstoqueFactoryController;

    function Produto: IProdutoController;
    function ImportarProduto: IImportarProdutoController;
    function Orcamento: IOrcamentoController;

  end;

implementation

{ TEstoqueFactory }

uses Produto.Controller, ImportarProduto.Controller, Orcamento.Controller;

constructor TEstoqueFactory.Create;
begin

end;

destructor TEstoqueFactory.Destroy;
begin

  inherited;
end;

function TEstoqueFactory.ImportarProduto: IImportarProdutoController;
begin
  Result := TImportarProdutoController.New;
end;

class function TEstoqueFactory.New: IEstoqueFactoryController;
begin
  Result := Self.Create;
end;

function TEstoqueFactory.Orcamento: IOrcamentoController;
begin
  Result := TOrcamentoController.New;
end;

function TEstoqueFactory.Produto: IProdutoController;
begin
  Result := TProdutoController.New;
end;

end.
