unit Conexao.Controller.interf;

interface

uses
  ormbr.Factory.Interfaces;

type
  IConexaoController = interface
    ['{C5DAFD0D-74A4-45C0-A0A8-887A5754A25E}']
    function conexaoAtual: IDBConnection;
  end;

implementation

end.
