unit EstoqueFactory.Controller;

interface

uses EstoqueFactory.Controller.interf, Produto.Controller.interf, ImportarProduto.Controller.interf;

type
  TEstoqueFactory = class(TInterfacedObject, IEstoqueFactoryController)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEstoqueFactoryController;

    function Produto: IProdutoController;
    function importarProduto: IImportarProdutoController;

  end;

implementation

{ TEstoqueFactory }

uses Produto.Controller, ImportarProduto.Controller;

constructor TEstoqueFactory.Create;
begin

end;

destructor TEstoqueFactory.Destroy;
begin

  inherited;
end;

function TEstoqueFactory.importarProduto: IImportarProdutoController;
begin
 Result := TImportarProdutoController.New;
end;

class function TEstoqueFactory.New: IEstoqueFactoryController;
begin
  Result := Self.Create;
end;

function TEstoqueFactory.Produto: IProdutoController;
begin
  Result := TProdutoController.New;
end;

end.
