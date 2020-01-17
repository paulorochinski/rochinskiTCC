unit ModulosFacade.View.Interf;

interface

uses EstoqueFactory.View.interf, PagarFactory.View.interf;

type
  IModulosFacadeView = interface
    ['{19B571EC-D772-4CE6-9E96-4ACB9C715D22}']
    function EstoqueFactoryView: IEstoqueFactoryView;
    function PagarFactoryView: iPagarFactoryView;
  end;

implementation

end.
