unit ModulosFacade.Controller.interf;

interface

uses EstoqueFactory.Controller.interf, PagarFactory.Controller.interf;

type
  IModulosFacadeController = interface
    ['{87269161-C179-4943-8FA8-63F376A17AAC}']
    function estoqueFactoryController: IEstoqueFactoryController;
    function pagarFactoryController: IPagarFaactoryController;
  end;

implementation

end.
