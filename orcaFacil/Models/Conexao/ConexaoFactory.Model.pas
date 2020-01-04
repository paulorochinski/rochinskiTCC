unit ConexaoFactory.Model;

interface

uses ConexaoFactory.Model.Interf, Conexao.Model.Interf;

type
  TConexaoFactoryModel = class(TInterfacedObject, IConexaoFactoryModel)
  private
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConexaoFactoryModel;

    function conexaoComBancoDeDados(AValue: TTipoConexao): IConexaoModel;

  end;

implementation

{ TConexaoFactoryModel }

uses DataMFirebird.Model;

function TConexaoFactoryModel.conexaoComBancoDeDados(AValue: TTipoConexao)
  : IConexaoModel;
begin
  case AValue of
    dbFirebird   : Result := TFDataMFirebird.New;
    // dbSQLite  :  ;
    // dbMongoDB :  ;
    // dbMySQL   :  ;
  end;
end;

constructor TConexaoFactoryModel.Create;
begin

end;

destructor TConexaoFactoryModel.Destroy;
begin

  inherited;
end;

class function TConexaoFactoryModel.New: IConexaoFactoryModel;
begin
  Result := Self.Create
end;

end.
