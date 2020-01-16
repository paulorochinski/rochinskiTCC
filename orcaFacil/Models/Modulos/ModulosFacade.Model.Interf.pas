unit ModulosFacade.Model.Interf;

interface

uses EstoqueFactory.Model.Interf, PagarFactory.Model.Interf;

type
  IModulosFacadeModel = interface
    ['{6165D013-7B12-44FF-B0CB-AFBF7968644D}']
    function estoqueFactoryModel: IEstoqueFactoryModel;
    function pagarFactoryModel: IPagarFactoryModel;
  end;

implementation

end.
