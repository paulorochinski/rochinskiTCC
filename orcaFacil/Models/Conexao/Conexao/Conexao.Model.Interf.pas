unit Conexao.Model.Interf;

interface

uses
  ormbr.Factory.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client;

type
  TTipoConexao = (dbFirebird, dbSQLite, dbMongoDB, dbMySQL);

  IConexaoModel = interface
    ['{CAB5648D-6CE0-4A92-B767-1F54F6626399}']
    function Conexao: IDBConnection;
    function ConexaoFireDac: TFDConnection;
  end;

implementation

end.
