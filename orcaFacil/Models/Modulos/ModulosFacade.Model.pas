unit ModulosFacade.Model;

interface

uses ModulosFacade.Model.Interf, EstoqueFactory.Model.Interf,
  PagarFactory.Model.Interf;

type
  TModulosFacadeModel = class(TInterfacedObject, IModulosFacadeModel)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IModulosFacadeModel;

    function estoqueFactoryModel: IEstoqueFactoryModel;
    function pagarFactoryModel: IPagarFactoryModel;

  end;

implementation

{ TModulosFacadeModel }

uses EstoqueFactory.Model, PagarFactory.Model;

constructor TModulosFacadeModel.Create;
begin

end;

destructor TModulosFacadeModel.Destroy;
begin

  inherited;
end;

function TModulosFacadeModel.estoqueFactoryModel: IEstoqueFactoryModel;
begin
  Result := TEstoqueFactoryModel.New;
end;

class function TModulosFacadeModel.New: IModulosFacadeModel;
begin
  Result := Self.Create;
end;

function TModulosFacadeModel.pagarFactoryModel: IPagarFactoryModel;
begin
  Result := TPagarFactoryModel.New;
end;

end.
