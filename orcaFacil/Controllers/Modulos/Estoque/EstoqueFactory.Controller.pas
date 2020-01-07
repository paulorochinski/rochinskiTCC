unit EstoqueFactory.Controller;

interface

uses EstoqueFactory.Controller.interf, Produto.Controller.interf;

type
  TEstoqueFactory = class(TInterfacedObject, IEstoqueFactoryController)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEstoqueFactoryController;

    function Produto: IProdutoController;
  end;

implementation

{ TEstoqueFactory }

uses Produto.Controller;

constructor TEstoqueFactory.Create;
begin

end;

destructor TEstoqueFactory.Destroy;
begin

  inherited;
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
