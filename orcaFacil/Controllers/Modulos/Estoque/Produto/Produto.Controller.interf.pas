unit Produto.Controller.interf;

interface

uses Tipos.Controller.interf, Produto.Model.Interf;

type
  IProdutoOperacoesController = interface;

  IProdutoController = interface
    ['{27F8BCF5-E76C-4DDA-8436-8259EB541F8E}']
    function Operacao(AValue: TTipoOperacao): IProdutoOperacoesController;
  end;

  IProdutoOperacoesController = interface
    function produtoController(AValue: IProdutoController)
      : IProdutoOperacoesController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacoesController;

    function localizar(AValue: string): IProdutoOperacoesController;

    function codigo(AValue: string): IProdutoOperacoesController;

    function codigoSinapi(AValue: integer)
      : IProdutoOperacoesController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacoesController;
      overload;
    function codigoSinapi: string; overload;

    function descricao(AValue: string): IProdutoOperacoesController; overload;
    function descricao: string; overload;

    function unidMedida(AValue: string): IProdutoOperacoesController; overload;
    function unidMedida: string; overload;

    function prMedioSinapi(AValue: Currency)
      : IProdutoOperacoesController; overload;
    function prMedioSinapi(AValue: string)
      : IProdutoOperacoesController; overload;
    function prMedioSinapi: string; overload;

    function &end: IProdutoController;
  end;

implementation

end.
