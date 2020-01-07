unit ModulosFacade.Controller;

interface

uses ModulosFacade.Controller.interf, EstoqueFactory.Controller.interf;

type
  TModulosFacadeController = class(TInterfacedObject, IModulosFacadeController)
  private

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IModulosFacadeController;

    function EstoqueFactoryController: IEstoqueFactoryController;
  end;

implementation

{ TModulosFacadeController }

uses EstoqueFactory.Controller;

constructor TModulosFacadeController.Create;
begin

end;

destructor TModulosFacadeController.Destroy;
begin

  inherited;
end;

function TModulosFacadeController.EstoqueFactoryController
  : IEstoqueFactoryController;
begin
  Result := TEstoqueFactory.New;
end;

class function TModulosFacadeController.New: IModulosFacadeController;
begin
  Result := Self.Create;
end;

end.
