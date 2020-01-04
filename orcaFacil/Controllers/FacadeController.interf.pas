unit FacadeController.interf;

interface

uses Conexao.Controller.interf;

type
  IFacadeController = interface
    ['{1F5A8116-1427-4D49-83A9-DFC34C0395FA}']
    function conexao: IConexaoController;
  end;

implementation

end.
