unit ConfiguracoesFactory.Model;

interface

uses ConfiguracoesFactory.Model.interf, ConfiguracoesConexao.Model.interf,
  ConfiguracoesExportar.Model.interf;

type
  TConfiguracoesFactoryModel = class(TInterfacedObject,
    IConfiguracoesFactoryModel)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConfiguracoesFactoryModel;

    function conexao: IConfiguracoesConexaoModel;
    function exportar: IConfiguracoesExportarModel;
  end;

implementation

{ TConfiguracoesFactoryModel }

uses ConfiguracoesConexao.Model, ConfiguracoesExportar.Model;

function TConfiguracoesFactoryModel.conexao: IConfiguracoesConexaoModel;
begin
  Result := TConfiguracoesConexaoModel.New;
end;

constructor TConfiguracoesFactoryModel.Create;
begin

end;

destructor TConfiguracoesFactoryModel.Destroy;
begin

  inherited;
end;

function TConfiguracoesFactoryModel.exportar: IConfiguracoesExportarModel;
begin
  Result := TConfiguracoesExportarModel.New;
end;

class function TConfiguracoesFactoryModel.New: IConfiguracoesFactoryModel;
begin
  Result := Self.Create;
end;

end.
