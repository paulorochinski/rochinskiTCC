unit FacadeView.Interf;

interface

uses ModulosFacade.View.Interf, MensagensFactory.View.Interf;

type
  IFacadeView = interface
    ['{A5C68B07-E2AD-49DE-BE9B-C9391BC4FB31}']
    function ModulosFacadeView: IModulosFacadeView;
    function MensagensFactory: IMensagemFactoryView;
  end;

implementation

end.
