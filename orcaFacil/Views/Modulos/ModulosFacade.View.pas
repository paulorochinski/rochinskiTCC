unit ModulosFacade.View;

interface

uses ModulosFacade.View.Interf, EstoqueFactory.View.Interf;

type
  TModulosFacadeView = class(TInterfacedObject, IModulosFacadeView)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IModulosFacadeView;

    function EstoqueFactoryView: IEstoqueFactoryView;
  end;

implementation

{ TModulosFacadeView }

uses EstoqueFactory.View;

constructor TModulosFacadeView.Create;
begin

end;

destructor TModulosFacadeView.Destroy;
begin

  inherited;
end;

function TModulosFacadeView.EstoqueFactoryView: IEstoqueFactoryView;
begin
  Result := TEstoqueFactoryView.New;
end;

class function TModulosFacadeView.New: IModulosFacadeView;
begin
  Result := Self.Create;
end;

end.
