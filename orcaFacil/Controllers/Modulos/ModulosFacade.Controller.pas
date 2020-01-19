unit ModulosFacade.Controller;

interface

uses ModulosFacade.Controller.interf, EstoqueFactory.Controller.interf,
  PagarFactory.Controller.interf;

type
  TModulosFacadeController = class(TInterfacedObject, IModulosFacadeController)
  private

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IModulosFacadeController;

    function estoqueFactoryController: IEstoqueFactoryController;
    function pagarFactoryController: IPagarFaactoryController;
  end;

implementation

{ TModulosFacadeController }

uses EstoqueFactory.Controller, PagarFactory.Controller;

constructor TModulosFacadeController.Create;
begin

end;

destructor TModulosFacadeController.Destroy;
begin

  inherited;
end;

function TModulosFacadeController.estoqueFactoryController
  : IEstoqueFactoryController;
begin
  Result := TEstoqueFactory.New;
end;

class function TModulosFacadeController.New: IModulosFacadeController;
begin
  Result := Self.Create;
end;

function TModulosFacadeController.pagarFactoryController: IPagarFaactoryController;
begin
  Result := TPagarFaactoryController.New;
end;

end.
