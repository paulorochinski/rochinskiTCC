unit Conexao.Model.Interf;

interface

uses
  ormbr.Factory.Interfaces;

type
  TTipoConexao = (dbFirebird, dbSQLite, dbMongoDB, dbMySQL);

  IConexaoModel = interface
    ['{CAB5648D-6CE0-4A92-B767-1F54F6626399}']
    function Conexao: IDBConnection;
  end;

implementation

end.
