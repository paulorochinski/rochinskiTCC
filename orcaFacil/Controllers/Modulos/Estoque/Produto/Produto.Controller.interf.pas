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
    function origemPreco: string;
    function prMedio: string;
    function prMedioSinapi: string;
  end;

  IProdutoOperacaoIncluirController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoIncluirController;

    function codigoSinapi(AValue: string): IProdutoOperacaoIncluirController;

    function descricao(AValue: string): IProdutoOperacaoIncluirController;

    function unidMedida(AValue: string): IProdutoOperacaoIncluirController;

    function origemPreco(AValue: string): IProdutoOperacaoIncluirController;

    function prMedio(AValue: Currency): IProdutoOperacaoIncluirController; overload;
    function prMedio(AValue: string): IProdutoOperacaoIncluirController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoIncluirController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoIncluirController; overload;

    procedure finalizar;
  end;

  IProdutoOperacaoAlterarController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoAlterarController;
    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoAlterarController;

    function codigoSinapi(AValue: string): IProdutoOperacaoAlterarController;

    function descricao(AValue: string): IProdutoOperacaoAlterarController;

    function unidMedida(AValue: string): IProdutoOperacaoAlterarController;

    function origemPreco(AValue: string): IProdutoOperacaoAlterarController;

    function prMedio(AValue: Currency): IProdutoOperacaoAlterarController; overload;
    function prMedio(AValue: string): IProdutoOperacaoAlterarController; overload;

    function prMedioSinapi(AValue: Currency): IProdutoOperacaoAlterarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoAlterarController; overload;

    procedure finalizar;
  end;

  IProdutoOperacaoExcluirController = interface
    ['{39E9F642-5752-4D00-AABA-EF915EC23D4B}']
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoExcluirController;
    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoExcluirController;

    procedure finalizar;
  end;

  IProdutoOperacaoDuplicarController = interface
    ['{0FBDB52C-DB07-402B-9B2D-8AD9E8EA51EC}']
    function produtoModel(AValue: IProdutoModel): IProdutoOperacaoDuplicarController;
    function produtoSelecionado(AValue: TTESTPRODUTO): IProdutoOperacaoDuplicarController;

    function codigoSinapi(AValue: string): IProdutoOperacaoDuplicarController;

    function descricao(AValue: string): IProdutoOperacaoDuplicarController;

    function unidMedida(AValue: string): IProdutoOperacaoDuplicarController;

    function origemPreco(AValue: string): IProdutoOperacaoDuplicarController;


    function prMedio(AValue: Currency): IProdutoOperacaoDuplicarController; overload;
    function prMedio(AValue: string): IProdutoOperacaoDuplicarController; overload;


    function prMedioSinapi(AValue: Currency): IProdutoOperacaoDuplicarController; overload;
    function prMedioSinapi(AValue: string): IProdutoOperacaoDuplicarController; overload;

    procedure finalizar;
  end;



implementation

end.
