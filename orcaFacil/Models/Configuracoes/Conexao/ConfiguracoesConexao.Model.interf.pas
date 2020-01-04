unit ConfiguracoesConexao.Model.interf;

interface

type
  IConfiguracoesConexaoModel = interface
    ['{ED797A4C-48A9-42FE-A793-925D7D14502A}']
    function tipoBanco: integer;
    function driver: string;
    function bancoDeDados: string;
    function servidor: string;
    function porta: string;
    function usuario: string;
    function senha: string;
    function biblioteca: string;
  end;

implementation

end.
