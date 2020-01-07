unit FacadeModel;

interface

uses FacadeModel.interf, ConfiguracoesFactory.Model.interf,
  ConexaoFactory.Model.interf, ModulosFacade.Model.interf;

type
  TFacadeModel = class(TInterfacedObject, IFacadeModel)
  private
  public

    constructor Create;
    destructor Destroy; override;

    class function New: IFacadeModel;

    function ConfiguracoesFactoryModel: IConfiguracoesFactoryModel;
    function ConexaoFactoryModel: IConexaoFactoryModel;

    function ModulosFacadeModel: IModulosFacadeModel;
  end;

implementation

{ TFacadeModel }

uses ConfiguracoesFactory.Model, ConexaoFactory.Model, ModulosFacade.Model;

function TFacadeModel.ConexaoFactoryModel: IConexaoFactoryModel;
begin
  Result := TConexaoFactoryModel.New;
end;

function TFacadeModel.ConfiguracoesFactoryModel: IConfiguracoesFactoryModel;
begin
  Result := TConfiguracoesFactoryModel.New;
end;

constructor TFacadeModel.Create;
begin

end;

destructor TFacadeModel.Destroy;
begin

  inherited;
end;

function TFacadeModel.ModulosFacadeModel: IModulosFacadeModel;
begin
  Result := TModulosFacadeModel.New;
end;

class function TFacadeModel.New: IFacadeModel;
begin
  Result := Self.Create;
end;

end.
