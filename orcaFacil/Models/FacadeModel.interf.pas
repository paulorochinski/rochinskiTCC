unit FacadeModel.interf;

interface

uses ConfiguracoesFactory.Model.interf, ConexaoFactory.Model.Interf,
  ModulosFacade.Model.Interf;

type
  IFacadeModel = interface
    ['{DD3D8ECD-18F4-413D-8714-F83630BF5E3F}']
    function configuracoesFactoryModel: IConfiguracoesFactoryModel;
    function conexaoFactoryModel: IConexaoFactoryModel;

    function ModulosFacadeModel: IModulosFacadeModel;
  end;

implementation

end.
