unit Base.View.Interf;

interface

uses Tipos.Controller.Interf;

type
  IBasePesquisaView = interface
    ['{71221DC5-588B-42C9-9F1D-F2B7DF151D19}']
    procedure listarRegistros;
    function incluirRegistro: IBasePesquisaView;
    function alterarRegistro: IBasePesquisaView;
    function consultarRegistro: IBasePesquisaView;
    function excluirRegistro: IBasePesquisaView;
    function duplicarRegistro: IBasePesquisaView;
    procedure &executar;
  end;

  IBaseCadastroView = interface
    ['{8EE97A85-684A-4960-A1B1-CC4949192F05}']
    function operacao(AValue: TTipoOperacao): IBaseCadastroView;
    function registroSelecionado(AValue: string): IBaseCadastroView;
    procedure salvarDados;
    procedure exibirDadosNaTela;
    procedure desabilitaCampos;
    procedure &executar;
  end;

implementation

end.
