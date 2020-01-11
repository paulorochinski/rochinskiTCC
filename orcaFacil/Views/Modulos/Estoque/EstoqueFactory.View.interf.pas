unit EstoqueFactory.View.interf;

interface

uses Base.View.Interf, Tipos.Controller.Interf;

type
 IEstoqueFactoryView = interface
   ['{35129067-206F-4C55-A7D1-745978ED80F3}']
   function exibirTelaListagem(AValue: TTelaListagem): IBasePesquisaView;
 end;

implementation

end.
