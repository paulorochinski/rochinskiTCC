unit FacadeModel;

interface

uses FacadeModel.interf, ConfiguracoesFactory.Model.interf,
  ConexaoFactory.Model.interf;

type
  TFacadeModel = class(TInterfacedObject, IFacadeModel)
  private
  public

    constructor Create;
    destructor Destroy; override;

    class function New: IFacadeModel;

    function ConfiguracoesFactory: IConfiguracoesFactoryModel;
    function ConexaoFactory: IConexaoFactoryModel;

  end;

implementation

{ TFacadeModel }

uses ConfiguracoesFactory.Model, ConexaoFactory.Model;

function TFacadeModel.ConexaoFactory: IConexaoFactoryModel;
begin
  Result := TConexaoFactoryModel.New;
end;

function TFacadeModel.ConfiguracoesFactory: IConfiguracoesFactoryModel;
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

class function TFacadeModel.New: IFacadeModel;
begin
  Result := Self.Create;
end;

end.
