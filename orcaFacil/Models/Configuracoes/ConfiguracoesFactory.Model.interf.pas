unit ConfiguracoesFactory.Model.interf;

interface

uses ConfiguracoesConexao.Model.interf;

type
  IConfiguracoesFactoryModel = interface
    ['{A707ED9B-5EE9-47EB-9C1E-72F67D436031}']
    function conexao: IConfiguracoesConexaoModel;
  end;

implementation

end.
