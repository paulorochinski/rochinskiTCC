unit PagarFactory.View.interf;

interface

uses Tipos.Controller.interf, Base.View.interf;

type
  iPagarFactoryView = interface
    ['{E2227F30-0977-4941-B23B-1D141C532902}']
    function exibirTelaListagem(AValue: TTelaListagem): IBasePesquisaView;
    function exibirTelaCadastro(AValue: TTelaCadastro): IBaseCadastroView;
  end;

implementation

end.
