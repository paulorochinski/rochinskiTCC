unit MensagensFactory.View.Interf;

interface

uses Tipos.Controller.Interf, Base.View.Interf;

type
  IMensagemFactoryView = interface
    ['{4D635394-0DEC-4369-8DC9-10A59F4FF567}']
    function exibirMensagem(AValue: TTIpoMensagem): IBaseMensagemView;
  end;

implementation

end.
