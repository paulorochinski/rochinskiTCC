unit FacadeController.interf;

interface

uses Conexao.Controller.interf, ModulosFacade.Controller.interf;

type
  IFacadeController = interface
    ['{1F5A8116-1427-4D49-83A9-DFC34C0395FA}']
    function ConexaoController: IConexaoController;

    function modulosFacadeController: IModulosFacadeController;
  end;

implementation

end.
