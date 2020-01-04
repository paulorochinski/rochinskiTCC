unit ConexaoFactory.Model.Interf;

interface

uses Conexao.Model.Interf;

type
 IConexaoFactoryModel = interface
   ['{593EB348-CB71-44E3-A0B2-71FCD848E10A}']
   function conexaoComBancoDeDados(AValue: TTipoConexao): IConexaoModel;
 end;

implementation

end.
