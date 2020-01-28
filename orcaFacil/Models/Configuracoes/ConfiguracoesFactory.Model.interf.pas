unit ConfiguracoesFactory.Model.interf;

interface

uses ConfiguracoesConexao.Model.interf, ConfiguracoesExportar.Model.interf;

type
  IConfiguracoesFactoryModel = interface
    ['{A707ED9B-5EE9-47EB-9C1E-72F67D436031}']
    function conexao: IConfiguracoesConexaoModel;
    function exportar: IConfiguracoesExportarModel;
  end;

implementation

end.
