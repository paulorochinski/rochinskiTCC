unit Produto.Controller.interf;

interface

uses Tipos.Controller.interf, Produto.Model.interf, TESTPRODUTO.Entidade.Model;

type
  IProdutoOperacaoIncluirController = interface;
  IProdutoOperacaoAlterarController = interface;
  IProdutoOperacaoExcluirController = interface;
  IProdutoOperacaoDuplicarController = interface;

  IProdutoController = interface
    ['{27F8BCF5-E76C-4DDA-8436-8259EB541F8E}']
    function Incluir: IProdutoOperacaoIncluirController;
    function Alterar: IProdutoOperacaoAlterarController;
    function Excluir: IProdutoOperacaoExcluirController;
    function Duplicar: IProdutoOperacaoDuplicarController;

    function localizar(AValue: string): IProdutoController;

    function idProduto: string;
    function codigoSinapi: string;
    function descricao: string;
    function unidMedida: string;
    function prMedioSinapi: string;
  end;

  IProdutoOperacaoIncluirController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController): IProdutoOperacaoIncluirController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoIncluirController;

    function codigoSinapi(AValue: integer): IProdutoOperacaoIncluirController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    function descricao(AValue: string): IProdutoOperacaoIncluirController; overload;

    function unidMedida(AValue: string): IProdutoOperacaoIncluirController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoIncluirController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    function &executar: IProdutoController;
  end;

  IProdutoOperacaoAlterarController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController): IProdutoOperacaoAlterarController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoAlterarController;

    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoAlterarController;

    function codigoSinapi(AValue: integer): IProdutoOperacaoAlterarController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;

    function descricao(AValue: string): IProdutoOperacaoAlterarController; overload;

    function unidMedida(AValue: string): IProdutoOperacaoAlterarController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoAlterarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;

    function &executar: IProdutoController;
  end;

  IProdutoOperacaoExcluirController = interface
    ['{39E9F642-5752-4D00-AABA-EF915EC23D4B}']
    function produtoController(AValue: IProdutoController)
      : IProdutoOperacaoExcluirController;
    function produtoModel(AValue: IProdutoModel)
      : IProdutoOperacaoExcluirController;

    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoExcluirController;

    function &executar: IProdutoController;
  end;

  IProdutoOperacaoDuplicarController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoController(AValue: IProdutoController): IProdutoOperacaoDuplicarController;
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoDuplicarController;

    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoDuplicarController;

    function codigoSinapi(AValue: integer): IProdutoOperacaoDuplicarController; overload;
    function codigoSinapi(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function descricao(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function unidMedida(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoDuplicarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoDuplicarController; overload;

    function &executar: IProdutoController;
  end;

implementation

end.
