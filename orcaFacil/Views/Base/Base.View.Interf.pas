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

  IBaseImportarView = interface
    ['{5FF57410-57EC-4D79-948B-0227720BED55}']
    procedure salvarDados;
    procedure importarArquivo;
    procedure &executar;
  end;

  IBaseMensagemView = interface
    ['{5D214805-B310-4B45-B616-E0B797B8F05B}']
    function mensagem(AValue: string): IBaseMensagemView;
    function &exibir: Boolean;
  end;

  IBaseLocalizarView = interface
    ['{3E5D8E06-093C-4943-BC53-CE9C4740C56C}']
    procedure listarRegistros;

    function exibir: string;
  end;

implementation

end.
