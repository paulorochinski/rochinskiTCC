unit ModulosFacade.Model;

interface

uses ModulosFacade.Model.Interf, EstoqueFactory.Model.Interf;

type
  TModulosFacadeModel = class(TInterfacedObject, IModulosFacadeModel)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IModulosFacadeModel;

    function EstoqueFactoryModel: IEstoqueFactoryModel;

  end;

implementation

{ TModulosFacadeModel }

uses EstoqueFactory.Model;

constructor TModulosFacadeModel.Create;
begin

end;

destructor TModulosFacadeModel.Destroy;
begin

  inherited;
end;

function TModulosFacadeModel.EstoqueFactoryModel: IEstoqueFactoryModel;
begin
  Result := TEstoqueFactoryModel.New;
end;

class function TModulosFacadeModel.New: IModulosFacadeModel;
begin
  Result := Self.Create;
end;

end.
